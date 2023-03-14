--- 
title: "Computational modelling of the coastal Mesolithic in south-eastern Norway"
author: "Isak Roalkvam"
date: "2023-03-14"
site: bookdown::bookdown_site
documentclass: book
bibliography: [book.bib]
output:
  bookdown::pdf_book:
    toc_depth: 3
    includes:
      in_header: preamble.tex
    latex_engine: xelatex
citation_package: default
pandoc_args: ["--csl", "templates/saa.csl"]
bookdown::epub_book:
  stylesheet: style.css
# biblio-style: apalike
# csl: "../templates/saa.csl"
link-citations: yes
classoption: oneside
---
