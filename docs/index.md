--- 
title: "Computational modelling of the coastal Mesolithic in south-eastern Norway"
subtitle: "Isak Roalkvam"
author: 
- "Institute of Archaeology, Conservation and History"
- "University of Oslo"
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
header-includes:
  - \usepackage{titling}
  - \pretitle{\begin{center}
  - \posttitle{\end{center}}
    \includegraphics[width=4in,height=4in]{figures/uio_logo_eng.jpg}\LARGE\\}
# nocite: | 
#   @mangerud1974, @sørensen2005

# word_document2 pdf_book
---
