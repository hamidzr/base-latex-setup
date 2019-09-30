#!/bin/bash

# compiles the project

compiler=pdflatex # lualatex

pdflatex $MAIN_FILE.tex
bibtex $MAIN_FILE
pdflatex $MAIN_FILE.tex
