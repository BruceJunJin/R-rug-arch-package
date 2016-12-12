library(rugarch)
library(quantmod)
myspec=ugarchspec(variance.model = list(model = "sGARCH", garchOrder = c(1, 2), submodel = NULL, external.regressors = NULL, variance.targeting = FALSE), mean.model = list(armaOrder = c(1, 1), include.mean = TRUE, archm = FALSE, archpow = 1, arfima = FALSE, external.regressors = NULL, archex = FALSE), distribution.model = "norm")
getSymbols("601288.SS")
Path=as.matrix(`601288.SS`)
value=Path[,1]
step=c(1:1645)
Data=data.frame(step,value)
myfit=ugarchfit(myspec,data=Data,solver="solnp")
