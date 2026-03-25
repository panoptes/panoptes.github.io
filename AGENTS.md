# AI Agent Guidelines for Project PANOPTES Landing Site

This document provides guidelines for AI coding agents working with the `panoptes.github.io` codebase.

## Project Overview

This repository is the central landing site for Project PANOPTES. It provides a dashboard linking to all other PANOPTES documentation.

**Key Characteristics:**
- **Build System:** UV
- **Documentation:** MkDocs with the Material theme
- **Content:** Markdown

## Essential Reading

1. **README:** `README.md` - Installation and local development
2. **MkDocs Config:** `mkdocs.yml` - Site structure and theme configuration

## Development Workflow

### 1. Making Changes

- All documentation must be written in Markdown for MkDocs.
- Use grid cards for the main dashboard in `docs/index.md`.
- Ensure all external links are valid and use HTTPS.

### 2. Commit Messages

- Clear, descriptive commit messages.
- Format: `Brief description (#issue-number)` if applicable.

## Testing

- Run `uv run mkdocs build --strict` to verify the site structure and links.
- Use `uv run mkdocs serve` to preview changes locally.
