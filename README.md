# Resume

This is a fun project to create a resume using LaTeX.

## Quick start

Get started quickly using [Overleaf](https://www.overleaf.com/latex/templates/software-engineer-resume/gqxmqsvsbdjf) template.

## Build using Docker

```sh
docker-compose up -d latex-build
```

or (for monitoring changes to tex file and auto rebuilding)

```sh
docker-compose up -d latex-dev
```

## Build using Make

<sub>requires pdflatex</sub>

```sh
make resume.pdf
make clean # remove extra generated files
```

## Preview

![Resume Screenshot](/resume.pdf)
