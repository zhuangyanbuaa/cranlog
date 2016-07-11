# install devtools package if not installed(just for the first time of installing)
if(!require(devtools)) {
    install.packages("devtools")
}
# install the installr package from github(just for the first time of installing)
devtools::install_github('talgalili/installr')
# install the cranlog package from github
devtools::install_github('zhuangyanbuaa/cranlog')
