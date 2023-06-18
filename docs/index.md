--- 
title: "Computational modelling of the coastal Mesolithic in south-eastern Norway"
author: "Isak Roalkvam"
date: "2023-06-18"
site: bookdown::bookdown_site
documentclass: book
papersize: a4
bibliography: [book.bib]
fontsize: 12pt
output:
  bookdown::pdf_book: 
    toc_depth: 3
    includes:
      in_header: preamble.tex
    latex_engine: xelatex
    citation_package: default
    pandoc_args: ["--csl", "saa.csl"]
bookdown::epub_book:
  pandoc_args: ["--csl", "saa.csl"]
link-citations: yes
classoption: oneside
# nocite: | 
#   @mangerud1974, @sørensen2005

# word_document2 pdf_book
---
