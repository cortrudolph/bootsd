library(boot)

dat <- as.data.frame(rnorm(100,5,1))
sd(dat[,1])

fc <- function(d, i){
  d <- d[i,]
  return(sd(d))
}

set.seed(1)
bootsd <- boot(dat, fc, R=500)
bootsd

plot(bootsd)
