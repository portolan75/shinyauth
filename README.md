# shinyauth
Dockerfile for building Docker Image (shinyauth R environment) to run Stock Analyser Shiny app.

Installs linux libraries:
- lbzip2
- libssl-dev
- libsasl2-dev
- libtiff-dev

Installs R packages:

- shiny-verse:latest (Shiny Server from rocker/shiny-verse)
- shinyWidgets
- bslib
- shinyjs
- mongolite
- jsonlite
- config
- remotes
- tidyquant
- plotly
- shinyauthr (from GitHub: https://github.com/PaulC91/shinyauthr)
