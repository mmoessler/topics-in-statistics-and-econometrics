#!/bin/bash

# 1) input file name
echo "Enter File: "
read file
echo $file

# 2) set directory
dir=$(pwd)
echo $dir

# 3) knit .rmd file
Rscript -e "library(knitr); knit('${file}.Rmd')"

# 4) compile .md file
# pandoc "${file}.md" -s -o "${file}.html" --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H mathjax-header-include.txt
pandoc "${file}.md" -s -o "${file}.html" --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --section-divs --to html4 --css https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css

# 5) Copy HTML file to Nginx served directory
#cp "${file}.html" /usr/share/nginx/html/
cp "${file}.html" /var/www/html/

read -p "Press any key to continue..."
