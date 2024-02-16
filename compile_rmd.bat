
rem 1) input file name
SET /p "file=Enter File: "
ECHO %file%

rem 2) set directory
SET dir=%cd%
ECHO %dir%

rem 3) knit .rmd file
Rscript -e "library(knitr); knit('%file%.Rmd')"

rem 4) compile .md file
rem pandoc %file%.md -o %file%.html --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax
rem use flag -s for stand alone html file with header
rem pandoc %file%.md -s --filter pandoc-crossref -o %file%.html --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax 
rem pandoc %file%.md -s -o %file%.html --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax 
rem pandoc %file%.md -s -o %file%.html --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H mathjax-header-include.txt
@REM pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt
@REM pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --lua-filter=wrap-in-div.lua
@REM pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --lua-filter=anchor-sections.lua
rem pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --section-divs
rem pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --section-divs --to html4
pandoc %file%.md -s -o %file%.html --no-highlight --citeproc --csl=apa-5th-edition.csl --bibliography=references.bib --mathjax=https://cdn.mathjax.org/mathjax/latest/MathJax.js?config=TeX-AMS-MML_HTMLorMML -H include_header.txt -A include_bottom.txt --section-divs --to html4 --css https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css

rem 5) open html-file
start %file%.html

PAUSE