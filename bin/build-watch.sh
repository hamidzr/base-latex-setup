#!/bin/bash

# watched the directory and rebuilds the main pdf file on changes

# requires npm, mupdf

build_cmd=./bin/build.sh

# build the intial doc
$build_cmd

# open pdf viewer
mupdf $MAIN_FILE.pdf &
if [ $? ne 0 ]; then
  mupdf `ls --sort time *.pdf | head -n 1` &
fi

# notify reload mupdf on change
npx nodemon -e tex --exec "$build_cmd && pkill -HUP mupdf"
