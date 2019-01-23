# 
# exp(2) - log(100)  #try
# 
# #log(10000)"
# 
# 
# 
# f  <-  function(x, y)
# 
#   z <- (y^2-x^2)*pi
# 
# 
# A <- c(1,2,3,4,5,8)
# B <- seq(10,20, by=2)
# C <- c(A,B)
# C = c(1,2,3,4,5)
# df <- data.frame(A,'test')
# 
# 
# #exp analysis
# 
# #scatter plot
# p <- ggplot(sample, aes(winner, error))
# p + geom_point()
# p <- ggplot(sample, aes(winner, error, colour=factor(victory), size=total))
# 

library(ggplot2)
p <- ggplot(sample, aes(winner, error, colour=factor(victory), size = total))
myPalette <- c("#FF0000", "#7CFC00")
p + geom_point() + scale_color_manual(values = myPalette) 



