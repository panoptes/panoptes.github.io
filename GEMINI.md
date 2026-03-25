# Gemini CLI Mandates for PANOPTES Landing Site

This file establishes foundational mandates for Gemini CLI when working on the `panoptes.github.io` repository.

## Primary Directive

**All instructions and guidelines defined in [AGENTS.md](./AGENTS.md) are absolute mandates.**

Gemini CLI must rigorously adhere to the standards, workflows, and principles detailed in `AGENTS.md`.

## Project-Specific Workflow Mandates

- **Documentation:** All documentation must be written in Markdown for MkDocs. Do not use reStructuredText (.rst) or Sphinx.
- **Package Management:** Use `uv` for all dependency and environment management.
- **Dashboard:** Maintain the grid-card dashboard in `docs/index.md` as the primary entry point.

## Research & Validation Commands

- **Linting & Formatting:**
    - `uv run ruff check .`
    - `uv run ruff format .`
- **Testing:**
    - `uv run mkdocs build --strict`
