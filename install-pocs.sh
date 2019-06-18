#!/usr/bin/env bash

usage() {
  echo -n "##################################################
# Install POCS and friends.
#
# This script is designed to install the PANOPTES Observatory
# Control System (POCS) on a cleanly install Ubuntu system.
#
# The script will insure that Docker is installed, download the
# latest Docker images (see list below) and clone a copy of the
# relevant PANOPTES repositories.
#
# Docker Images:
#
#   gcr.io/panoptes-survey/pocs
#   gcr.io/panoptes-survey/paws
#
# Github Repositories:
#
# The script will ask for a github user name in order to install
# forked versions of the repos if you are actively developing the
# software. otherwise the default user (panotpes) is okay for
# running the unit.
#
#   github.com/panoptes/POCS
#   github.com/panoptes/PAWS
#   github.com/panoptes/panoptes-utils
#
# The script has been tested with a fresh install of Ubuntu 19.04
# but may work on other linux systems.
#############################################################
 $ $(basename $0) [--user panoptes] [--pandir /var/panoptes]

 Options:
  USER      The default user. This is saved as the PANUSER environment variable.
  PANDIR    Default install directory, defaults to /var/panoptes. Saved as PANDIR
            environment variable.
"
}

if [ -z "${PANUSER}" ]; then
    export PANUSER=$USER
    echo "export PANUSER=${PANUSER}" >> ${HOME}/.bashrc
fi
if [ -z "${PANDIR}" ]; then
    export PANDIR='/var/panoptes'
    echo "export PANDIR=${PANDIR}" >> ${HOME}/.bashrc
fi

while [[ $# -gt 0 ]]
do
key="$1"
case $key in
    -u|--user)
    PANUSER="$2"
    shift # past argument
    shift # past value
    ;;
    -d|--pandir)
    PANDIR="$2"
    shift # past argument
    shift # past value
    ;;
    -h|--help)
    PANDIR="$2"
    usage
    exit 1
    ;;
esac
done

do_install() {
    clear
    echo "Installing PANOPTES software."
    echo "USER: ${PANUSER}"
    echo "DIR: ${PANDIR}"

    # System time doesn't seem to be updating correctly for some reason. Perhaps just a VirtualBox issue
    sudo systemctl start systemd-timesyncd.service

    if [[ ! -d "${PANDIR}" ]] || [[ $(stat -c "%U" "${PANDIR}") -ne "$USER" ]]; then
        echo "Creating directories"
        # Make directories
        sudo mkdir -p "${PANDIR}"
        sudo chown -R "${PANUSER}":"${PANUSER}" "${PANDIR}"

        mkdir -p "${PANDIR}/logs"
        mkdir -p "${PANDIR}/images"
    fi

    echo "Log files will be stored in ${PANDIR}/logs/install-pocs.log."

    # apt: git, wget
    echo "Installing system dependencies"
    sudo apt update &>> "${PANDIR}/logs/install-pocs.log"
    sudo apt --yes install wget curl git openssh-server jq httpie byobu vim-nox grc &>> "${PANDIR}/logs/install-pocs.log"

    # Make GRC log output work with PANOPTES logs
    mkdir -p "/home/${PANUSER}/.grc"
    echo <<< EOF > "/home/${PANUSER}/.grc/conf.log"
regexp=^D.*$
colours=bold default
======
regexp=[^\d]*\d\d:\d\d:\d\d[\.,]{0,1}\d{0,1}\d{0,1}\d{0,1}
colours=bold blue
count=once
======
regexp=^I.*$
colours=bold blue
======
regexp=^E.*$
colours=bold red
======
regexp=^W.*$
colours=bold yellow on_black
======
regexp=^C.*$
colours=bold on_red
EOF

    echo "Cloning PANOPTES source code."
    echo "Github user for PANOPTES repos (POCS, PAWS, panoptes-utils)."

    # Default user
    read -p "Github User [press Enter for default]: " github_user
    github_user=${github_user:-wtgee}
    echo "Using repositories from user '${github_user}'."

    if [[ "${github_user}" = "wtgee" ]]; then
        echo "Using development files from user 'wtgee' for now."
    fi

    cd "${PANDIR}"
    declare -a repos=("POCS" "PAWS" "panoptes-utils")
    for repo in "${repos[@]}"; do
        if [ ! -d "${PANDIR}/${repo}" ]; then
            echo "Cloning ${repo}"
            # Just redirect the errors because otherwise looks like it hangs.
            git clone "https://github.com/${github_user}/${repo}.git" &>> "${PANDIR}/logs/install-pocs.log"
            if [[ "${repo}" = "POCS" && "${github_user}" = "wtgee" ]]; then
                echo "Getting docker branch 'new-docker'"
                cd "${repo}" && git checkout new-docker
                cd "${PANDIR}"
            fi
        else
            echo "Repo ${repo} already exists on system."
        fi
    done

    # Link env_file from POCS
    ln -sf "${PANDIR}/POCS/docker/env_file" "${PANDIR}"
    echo "source ${PANDIR}/env_file" >> "${HOME}/.bashrc"

    # Link conf_files dir from POCS
    ln -sf "${PANDIR}/POCS/conf_files" "${PANDIR}"

    # Get Docker
    if ! hash docker 2>/dev/null; then
        echo "Installing Docker"
        /bin/bash -c "$(wget -qO- https://get.docker.com)" &>> ${PANDIR}/logs/install-pocs.log
        sudo usermod -aG docker "${PANUSER}" &>> "${PANDIR}/logs/install-pocs.log"

        if ! hash docker-compose 2>/dev/null; then
            # Docker compose as container - https://docs.docker.com/compose/install/#install-compose
            sudo wget -q https://github.com/docker/compose/releases/download/1.24.0/run.sh -O /usr/local/bin/docker-compose
            sudo chmod a+x /usr/local/bin/docker-compose
            sudo docker pull docker/compose
        fi

        echo "Pulling POCS docker images"
        sudo docker pull gcr.io/panoptes-survey/panoptes-utils
        sudo docker pull gcr.io/panoptes-survey/pocs
        sudo docker pull gcr.io/panoptes-survey/paws
    else
        echo "WARNING: Docker images not installed/downloaded."
    fi

    echo "Please reboot your machine before using POCS."

    read -p "Reboot now? [y/N]:" -r
    if [[ $REPLY =~ ^[Yy]$ ]]
    then
        sudo reboot
    fi

}
# wrapped up in a function so that we have some protection against only getting
# half the file during "curl | sh" - copied from get.docker.com
do_install
