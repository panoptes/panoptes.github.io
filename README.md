This repository has been archived and is no longer the source for our website.


Project PANOPTES Website
========================

Welcome to the PANOPTES website. This website is hosted on [github pages](https://pages.github.com/)
and is a static website, meaning we don't do any fancy server side processing or have anything
too complex going on.

The site was built with the help of [forestry.io](https://forestry.io) and can be edited in an easy
way via that website, however we only have a limited number of guest accounts. However, all editing
can also be done right here in github (or by cloning the repository and submitting a proper PR).

The main idea behind the website is that all of the layout (e.g. look and feel) is separated from
all of the content. For the most part people will only be needing to edit the content so there is no
real knowledge of html or javascript required.

The content is in the form of [Markdown](https://www.markdownguide.org/) documents, which are just
really simple and easy ways to add a litte semantic knowledge to your content. For instance, this
README page is written in markdown and if I want make something **bold** I can just do `**bold**` (it
might help to look at the [Raw version of this README](https://raw.githubusercontent.com/panoptes/panoptes.github.io/master/README.md)). See also this [markdown cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet).

There are a few main pages and folders you will want to work with to edit the content.

### Pages

There are a few "top-level" pages, such as the [About](https://projectpanoptes.org/about), [Contact](https://projectpanoptes.org/contact), [Instructions](https://projectpanoptes.org/instructions), etc. You will find those mark down pages right here in this main folder, called `about.md`, `contact.md`, and `instructions.md` respectively.

If you click on the [About markdow](https://github.com/panoptes/panoptes.github.io/blob/master/about.md) you might be a bit confused about what you see, and once again it helps to look at the [raw version](https://raw.githubusercontent.com/panoptes/panoptes.github.io/master/about.md) of the same page. As of right now the `about.md` page looks like:

```markdown
---
title: About
date: 2017-11-01 03:00:00 +0000
banner_image: "/uploads/2018/12/16/logo-bg-starry-banner.png"
heading: ''
sub_heading: ''
layout: landing-page
textline: Panoptic Astronomical Networked Observatories for a Public Transiting Exoplanets
  Survey
publish_date: 2017-12-01 04:00:00 +0000
show_staff: true

---
A citizen science project which aims to make it easy for anyone to build a low cost, robotic telescope which can be
used to detect transiting exoplanets.

The PANOPTES community spans the world, from the founding members in Hawaii to designers, builders and scientists in
Europe, Australia, and North and South America. We're looking forward to our members in Africa and Asia! We use a
variety of means to communicate, including a [Google Group](https://projectpanoptes.org/contact.html) for announcements
and a [forum for discussions](https://forum.projectpanoptes.org/).

PANOPTES is also a platform. We encourage other groups to come up with projects which use PANOPTES data, hardware or
software to address other scientific questions. For example, [The Huntsman Telephoto Array](https://www.facebook.com/AstroHuntsman/) 
is a project that is using the PANOPTES software to automate their observations.
```

The bit at the top is called, not surprisingly, the "top-matter" and provides some fields and information about the
page.  Everything below the second `---` is considered the `content` for the page. For the most part the fields in
top-matter are used by the HTML to control various aspects of the page, such as which layout to use (e.g. `layout: landing-page` - more on layouts below), as well as some general metadata, such as the `publish_date`.

So how is this all used? That's where layouts come in!

But first, it is worth mentioning that besides the top-level
pages, many of the different areas of the site have their own folder. Thus, all the markdown pages for the "People" are
in the [`_people`](https://github.com/panoptes/panoptes.github.io/tree/master/_people) folder.

If you wanted to add a new person to the website, you could create a copy of one of those files, change the top-matter
(e.g. the `title`, the `links`, `email`, etc.) and never have to bother with any of the actual layout details.

However, if you are doing a lot of editing it does help to understand how the layouts work.

### Layouts

That's where the layouts come in. These are written in html and contain not only html tags (e.g. `<div>`, `<h2>`, `<strong>`, etc) but also funky logical tags that come from [Jekyll](https://jekyllrb.com/) (called "liquid tags" but that's not important).

When the github repository changes the GitHub Pages knows automagically to build a new static site, basically processing all of those "liquid tags" and generating plain old-fashioned html tags. This then gets uploaded to a hosting location
provided by GitHub.

One nice thing about the liquid tags is that we can use them to include other layouts, keeping us from having to write the same thing over and over again.

Let's look at how the about page is formed. In the top-matter shown above there is the field `layout: landing-page`.
If we look in the [`_layouts` folder](https://github.com/panoptes/panoptes.github.io/tree/master/_layouts) here on github we will see a number of html layout pages, including [`landing-page.html`](https://github.com/panoptes/panoptes.github.io/blob/master/_layouts/landing-page.html).

As of this writing this looks like the following:

```html
---
layout: default
---

{% comment %}
	This layout is used to generate custom landing page layouts,
	e.g index.md and about.md
{% endcomment %}

{% assign stripped_content = content | strip_newlines %}
{% if content and stripped_content != "" %}
<section class="about">
	<div class="container pure-g">
		<div class="pure-u-1">
			<div class="content content-narrow">
				{{ content }}
			</div>
		</div>
	</div>
</section>
{% endif %}

{% include services.html %}

{% include news.html %}

{% include partners.html %}

{% include staff.html %}
```

Again, we have some top-matter (with one field) and then have the main content area. The `layout: default` top-matter
here says that again this page should actually be built using the [`default.html` layout](https://github.com/panoptes/panoptes.github.io/blob/master/_layouts/default.html). Let's keep looking at the `landing-page.html` but it helps to understand that the `content` here is placed inside the `{{ content }}` tag in `default.html`.

Similarly, we can see in the above that the `landing-page.html` has a `{{ content }}` tag, here wrapped by some html tags
(`<section class="about">` through `</section>`).  There are some other css markers and things going on that affect
our styles but the general idea should be simple. You can also see that the `landing-page.html` layout includes some
other "helper" html files, such as `services.html`, `news.html`, `partners.html`, `staff.html`, etc. These aren't
strictly necessary on every page but instead were built this way (by forestry.io) to make the "landing-page" very generic.

Remember back in the top-matter for the about page there was a field that said `show_staff: true`? Well here the
`staff.html` page will read the value and decide if we should include staff photos or not (i.e. `{% if page.show_staff %}...`).

There is more to the layouts and liquid tags but this should help to get started.
