--- 
title: "Computational modelling of the coastal Mesolithic in south-eastern Norway"
site: bookdown::bookdown_site
documentclass: book
papersize: a4
bibliography: [book.bib]
fontsize: 12pt
output:
  bookdown::pdf_book: 
    toc: false
    toc_depth: 3
    includes:
      in_header: preamble.tex
      before_body: before_body.tex
    latex_engine: xelatex
    citation_package: default
    pandoc_args: ["--csl", "saa.csl"]
bookdown::epub_book:
  pandoc_args: ["--csl", "saa.csl"]
link-citations: yes
classoption: oneside #twoside
# header-includes:
#   - \usepackage{titling}
#   - \pretitle{\begin{center}
#   - \posttitle{\end{center}}
#     \includegraphics[width=4in,height=4in]{figures/uio_logo_eng.jpg}\LARGE\\}
# nocite: | 
#   @mangerud1974, @sørensen2005

# word_document2 pdf_book
---
