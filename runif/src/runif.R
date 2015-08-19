#!/usr/bin/Rscript
'usage: runif.R [--n=<int> --min=<float> --max=<float> --seed=<float> --out=<file>]

options:
 --n=<int>        number of observations. If length(n) > 1, the length is taken to be the number required [default: 1].
 --min=<float>   lower limits of the distribution. Must be finite [default: 0].
 --max=<float>   upper limits of the distribution. Must be finite [default: 1].
 --seed=<float>  seed for set.seed() function [default: 1]
 --out=<file>    output file [default: ./random.txt]
 --report=<logic> generate report or not [default: TRUE]'  -> doc

library(docopt)
opts <- docopt(doc)
set.seed(opts$seed)
r <- runif(n = as.integer(opts$n), 
           min = as.numeric(opts$min), 
           max = as.numeric(opts$max))

write.table(r, file = opts$out, col.names = TRUE)

if(opts$report){
    ## generate report
    ## stop("not implemented yet")
    ## call this
    ## as.numeric(read.table(file = opts$out, header  = TRUE))
    rmarkdown::render("~/report/report.Rmd", BiocStyle::html_document(toc = TRUE),
           output_dir = ".")
}



