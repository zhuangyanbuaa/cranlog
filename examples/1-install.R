# install devtools package if not installed
if(!require(devtools)) {
    install.packages("devtools")
}
# install the installr package from github
devtools::install_github('talgalili/installr')
# install the cranlog package from github
devtools::install_github('zhuangyanbuaa/cranlog')
