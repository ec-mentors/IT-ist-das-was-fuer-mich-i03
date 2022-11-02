# IT, ist das was für mich?

Lecture notes and course material.
Entry Point for participants.

This repository includes both instructions for the website
as well as for the slides.

## Website

### Development

Using your favorite method, create (virtual) Python environment
based on the specifications in `environment.yml` or `requirements.txt`.
You may take a look at `.gitlab-ci.yml`.

### Technical Background

The following tools are at play:
* [Sphinx](https://www.sphinx-doc.org/)
* [Markedly Structured Text (MyST)](https://myst-parser.readthedocs.io/)
* [Sphinx Book Theme](https://sphinx-book-theme.readthedocs.io/)

Sphinx is a mature, feature rich, versatile and extensible documentation generator.

While Sphinx is based on reStructuredText (reST), different markup languages are
supported either natively or through plugins.
The MyST parser allows for a more markdownish-writing experience.

The sphinx book theme is responsible for the appearance of the site.

Extensions are specified in the Sphinx configuration file `conf.py`.

The listed tools are used within the [executable books project](https://github.com/executablebooks).


### Editing

Source files reside in the `sources/` directory and are written using the
Markdown flavor [Markedly Structured Text (MyST)](https://myst-parser.readthedocs.io/en/latest/)
which is a superset of [CommonMark Markdown](https://commonmark.org/).

To make changes, edit the already existing files or add a new document.

New documents need to be included through a `toctree` directive.

Take a look at both MyST and the theme to learn more about how to write content.
To better understand the underlying principles, take a look at Sphinx.


### Building

Once everything is set up (see below), you can create both the
website and the slides doing `$ ./run.sh`.

Note that `run.sh` builds the development or work in progress (wip) version
of the website whereas the CI service only builds publication-ready-content.
See how the `exclude_patterns` is specified in `conf.py`. The toggle is
implemented using [`tags` passed to the build commands](https://www.sphinx-doc.org/en/master/usage/configuration.html#conf-tags).

#### Setup

Using your favorite approach, create a (virtual) Python environment
based on the instructions in `.gitlab-ci.yml`.

#### Commands

To build locally, do

```console
make html
```

To remove the build, do

```console
make clean
```

Alternatively, `sphinx-build` can be invoked directly

```console
$ sphinx-build -b html source/ public/  # to build
$ rm -r public  # to remove the build
```

Links are automatically checked in the CI pipeline.
To run these checks locally, see the CI config.


#### Pages

A CI pipeline is configured and the build is automatically
published using GitLab pages.


## Slides

Slides are markdown-based as well and the content can be included
in the website's source.
For presentation purposes, the source is converted to PDF or HTML slides.

### Installation

#### VS Code Plugin

There is a [VS Code plugin](https://marketplace.visualstudio.com/items?itemName=marp-team.marp-vscode)
for local development and building.

#### Marp CLI

There is a [CLI that can be installed through npm](https://www.npmjs.com/package/@marp-team/marp-cli).

```console
$ npm install -g @marp-team/marp-cli
```

### Building

To convert a markdown file into e.g. html, do

```console
$ marp slides.md -o slides.html
$ npx @marp-team/marp-cli@latest slides.md -o slides.html  # included marp update
```

or use the VS Code plugin.

To simplify automation, use the SlidesMakefile, i.e. do

```console
$ make --makefile=SlidesMakefile all  # to compile all slides
$ make --makefile=SlidesMakefile clean  # to remove them
$ make --makefile=SlidesMakefile help  # to see other options
```

### Spell Checking

[CSpell] can be used for spell checking.

There is an
[extension for VS Code](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)
as well a
[dictionary for German](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker-german).
