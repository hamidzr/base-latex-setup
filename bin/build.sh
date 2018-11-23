#!/bin/bash

# compiles the project

main_file=main
compiler=pdflatex # lualatex

pdflatex $main_file.tex
bibtex $main_file
pdflatex $main_file.tex
