#!/bin/sh

set -ev

Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::bs4_book')"
#Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

# copy robots.txt for live site version
cp -pr robots.txt notes

# # copy images directory for slides
# cp -pr images docs
# 
# # render all the slides
# for file in $( find docs -name "[^_]*.Rmd" -maxdepth 1 ); do
#   Rscript -e "rmarkdown::render('$file')"
# done
