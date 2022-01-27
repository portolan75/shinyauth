FROM rocker/shiny-verse:latest

RUN apt-get update -qq \
  && apt-get -y --no-install-recommends install \
  # Linux libraries that will be installed
  lbzip2 \
  libssl-dev \
  libsasl2-dev \
  libtiff-dev \
  && install2.r --error --deps TRUE \
  # R packages from CRAN
  shinyWidgets \
  bslib \
  shinyjs \
  mongolite \
  jsonlite \
  config \
  remotes \
  tidyquant \
  plotly \
  # R packages from GitHub (shinuauthr)
  && installGithub.r PaulC91/shinyauthr
  