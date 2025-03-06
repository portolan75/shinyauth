# shinyauth
Dockerfile for building Docker Image (shinyauth R environment) to run Stock Analyser Shiny app.
It install the necessary Linux packages as well as and Shiny-server on my AWS EC2 server running [paoloortolan.com](https://shiny.paoloortolan.com) in production.

Installs linux libraries:
libcurl4-openssl-dev \
libxml2-dev \
gdebi-core \
pandoc \
[From previous Stock Analyser Dockerfile]: #
- lbzip2
- libssl-dev
- libsasl2-dev
- libtiff-dev
- libxt6
[Necessary for tidyverse]: #
- libfontconfig1-dev
- libfreetype6-dev
- pkg-config
[Libraries for fontsconfig]: #
- freetype2-doc
- libharfbuzz-dev 
- libfribidi-dev
[Necessary for Shinyjs that depends on sodium]: #
- libsodium-dev
- sudo

Installs R packages:

[shiny-verse inclused packages tidyverse and shiny]: #
- shiny-verse:latest (Shiny Server from rocker/shiny-verse)
- shinyWidgets
- bslib
- shinyjs
- mongolite
- jsonlite
- config
- remotes
- here
- quantmod
- tidyquant
- thematic
- plotly
- shinyauthr (from GitHub: https://github.com/PaulC91/shinyauthr)

See Dockerfile for correct **shinyauth:latest** image creation