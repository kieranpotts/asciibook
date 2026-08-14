# AsciiBook

A template repository for a lightweight toolchain that authors technical
books from AsciiDoc source, compiled via the official Asciidoctor Docker
image into PDF (screen light, screen dark, and print/prepress editions),
EPUB, and HTML.

The capitalized words REQUIRED, MUST, MUST NOT, RECOMMENDED, SHOULD,
SHOULD NOT, OPTIONAL, and MAY are to be interpreted as described in
[IETF RFC 2119](https://www.ietf.org/rfc/rfc2119.txt).

## Tech stack

- AsciiDoc, compiled by [asciidoctor/docker-asciidoctor](https://github.com/asciidoctor/docker-asciidoctor)
  (`asciidoctor`, `asciidoctor-pdf`, `asciidoctor-epub3`) — no local
  installation required beyond Docker.
- GitHub Actions for CI (PDF generation, commit-message validation,
  stale-issue flagging, label sync).
- `pre-commit` for commit-message validation.

## Project structure

- `src/` \
  Book source. `index.adoc` is the root document. `chapter-NN/`,
  `appendix-X/`, and front/back-matter files (`preface.adoc`,
  `foreword.adoc`, `dedication.adoc`, `glossary.adoc`, `references.adoc`,
  `colophon.adoc`, etc.) are included from it. `src/_/` holds shared
  assets: `images/`, `fonts/`, `themes/`.

- `dist/` \
  Build output (PDFs, EPUB, HTML). Generated, not committed.

- `run/` \
  Build tooling: `start` (boots a detached, network-isolated Asciidoctor
  container), `build` (runs the four `docker exec` conversions into
  `dist/`), `stop` (stops the container).

- `docs/` \
  User-facing docs for consumers of this template: `requirements.md`,
  `get-started.md`, `source-files.md`, `configuration.md`, `building.md`.

- `.github/workflows/` \
  `generate-pdf.yaml` plus commit-message validation, stale-issue
  flagging, and label sync.

## Tools

- `./run/start` to boot the Asciidoctor container (detached,
  network-isolated, current working directory mounted at `/documents`).

- `./run/build` to generate `book-screen-light.pdf`,
  `book-screen-dark.pdf`, `book-print.pdf`, `book.epub`, and `book.html`
  into `dist/`.

- `./run/stop` to stop the container.

## Rules

- MUST run `./run/start` before `./run/build`, and `./run/stop` when done —
  the build scripts assume a running `asciidoctor` container.

- SHOULD keep one AsciiDoc source file per chapter/appendix under its own
  `src/chapter-NN/` or `src/appendix-X/` directory, included from
  `src/index.adoc`.

## References

The following technical standards (TS) govern this project. Fetch and ingest
the relevant standards as-and-when required for the task at hand.

- [**TS-9: Version Control**](https://kieranpotts.com/standards/009) \
  Use when working with Git. Covers commits, branching, merging, integration
  strategies, cutting releases, and configuring Git/PR/CI tooling.

- [**TS-25: Technical Documentation**](https://kieranpotts.com/standards/025) \
  Use when deciding what documentation a project needs, where it should live,
  who it's for, or whether it's still trustworthy.

- [**TS-26: Technical Writing Style Guide**](https://kieranpotts.com/standards/026) \
  Use when writing or editing the prose of a technical document. Covers
  tone-of-voice, headings, terminology, lists, and citations.

- [**TS-28: AsciiDoc**](https://kieranpotts.com/standards/028) \
  Use when writing or reviewing AsciiDoc documents or websites built using
  Antora.

- [**TS-58: Docker**](https://kieranpotts.com/standards/058) \
  Use when designing Dockerfiles, building Docker images, or running Docker
  containers.

- [**TS-60: GitHub Actions**](https://kieranpotts.com/standards/060) \
  Use when designing, authoring, reviewing, or securing GitHub Actions workflows
  or custom actions.
