FROM rocker/shiny-verse:latest

# Install linux packages
RUN apt-get update -qq \
  && apt-get install -y --no-install-recommends \
  libcurl4-openssl-dev \
  libxml2-dev \
  gdebi-core \
  pandoc \
  # From previous Stock Analyser Dockerfile
  lbzip2 \ 
  libssl-dev \
  libsasl2-dev \
  libtiff-dev \
  # Update necessary 
  libxt6 \
  # Necessary for tidyverse
  libfontconfig1-dev \
  libfreetype6-dev \
  pkg-config \
  # Libraries for fontsconfig
  freetype2-doc \
  libharfbuzz-dev \ 
  libfribidi-dev \
  # Necessary for Shinyjs that depends on sodium
  libsodium-dev \
  sudo \
  && apt-get clean

# Verify freetype2 installation
RUN pkg-config --modversion freetype2

# Install R packages from CRAN
RUN R -e "install.packages( \
    c( \
        # 'tidyverse', \
        'shiny', \
        'shinyWidgets', \
        'bslib', \
        'shinyjs', \
        'mongolite', \
        'jsonlite', \
        'config', \
        'remotes', \
        'here', \
        'quantmod', \
        'tidyquant', \
        'thematic', \
        'plotly' \
    ), \
    repos = 'https://cran.rstudio.com/' \
    dependencies = TRUE \ 
)"

# Install R packages from GitHub (shinuauthr)
RUN R -e "remotes::install_github('PaulC91/shinyauthr')"