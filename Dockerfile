FROM rocker/rstudio:4.1.3

COPY .Rprofile
COPY renv.lock
COPY renv