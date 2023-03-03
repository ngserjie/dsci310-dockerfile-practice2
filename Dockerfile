FROM rocker/rstudio

WORKDIR /home/rstudio

# you can use remotes::install_version() as well instead of using renv

COPY --chown=rstudio:rstudio renv.lock .
COPY --chown=rstudio:rstudio renv renv
COPY --chown=rstudio:rstudio .Rprofile .

RUN ls -alh

USER rstudio
RUN Rscript -e "renv::repair()"
USER root
# FROM rocker/rstudio:4.1.3

# COPY .Rprofile .
# COPY renv.lock .
# COPY renv .

# RUN ls -alh

# USER rstudio
# RUN Rscript -e "renv::repair()"
# USER root
