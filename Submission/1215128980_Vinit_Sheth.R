##############################################################################################

#                     Name - Vinit Sheth
#                     ASU ID - 1215128980
#                     ASURITE ID - vsheth2


##################################################################################################


#      Q1


##################################################################################################


#      Vector – Vector is a basic data type in R which contains elements of same data type. 
# 
#      It can be created using c() function. 

V <- c(1,2,3,4,5)
typeof(V)

# If the elements are of different type then they will be converted to higher order same data type.

V <- c(1,2,3,'vinit')
typeof(V)

# Matrix  - Matrix is two dimensional data structure in R. Matrix is similar to Vector but additionally 	 contains dimension attribute.  Just like vector matrix also have data of same data type.
# 
# Matrix can be created using matrix() function.

M <- matrix(1:12, nrow = 3, ncol = 4)


# Data Frame – Data Frame is also a two dimensional data structure in R but unlike matrix it can have elements of different data type.
# 
# Data frame can be created using data.frame() function.

D <- data.frame("ID" = c(1,2,3) , "Name" = c("Vinit" , "Sheth", "Raghav") , "color" = c("green","blue","red"))
D

# Factors  - Factors is a data structure used for fields which have predefined, distinct values. Its similar to dictionary in python. 

F <- factor(c("single", "married"))
F
str(F)


##################################################################################################


#      IN CLASS WORK


##################################################################################################


# Import library
library(ggplot2)

# Plot winner and error dots

p <- ggplot(sample, aes(winner, error))
p + geom_point()

# Color the data points

p <- ggplot(sample, aes(winner, error, colour=factor(victory), size=total))
p + geom_point()

# custome color palette
myPalette <- c("#FF9900", "#0099FF")
p + geom_point() + scale_colour_manual(values=myPalette)

# add label
p <- ggplot(sample, aes(winner, error, colour=factor(victory), size=total, label=player))
p + geom_point() +scale_colour_manual(values=myPalette) + geom_text()

# jitter the label a bit
p + geom_point() +scale_colour_manual(values=myPalette) + geom_text(hjust=-0.2,
                                                                    vjust=1)
# color by match (year), change shape for victory variable
p <- ggplot(sample, aes(winner, error))
p + geom_point(aes(shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), hjust=1.2, vjust=-1)

# split by match, jitter text
p + geom_point(aes(shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), position = position_jitter(width=5,
                                                                              height=1.5) ) + facet_grid(~year) +theme_classic()

# split by match, horizontal split
p + geom_point(aes(shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), position = position_jitter(width=5,
                                                                              height=1.5) ) +facet_wrap(~year,nrow = 5 , ncol = 2) +theme_classic()

# split by match, horizontal split, with lines
p + geom_point(aes(colour=factor(year),shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), position = position_jitter(width=5,
                                                                              height=1.5) ) +facet_wrap(~year,nrow = 5 , ncol = 2)  + geom_line(aes(colour=factor(year)))+theme_classic()


##################################################################################################


#      Q2


##################################################################################################

# I am assuming that for victory we want winner and total both to be maximum, so i am taking the harmonic mean of winner and total on y axis and similarly we want difference of total 
# error to be maximum so i am taking that on x axis. So from the graph we can see that winner player is either on far top or far right of the loser player.


p <- ggplot(sample, aes( total - error  ,(2 * total * winner)/(winner+total), colour=factor(victory), size=total, label=player))
p + geom_point(aes(shape=factor(victory), size=total))+
  geom_text(aes(colour=factor(year),label=player), position = position_jitter(width=5,
                                                                              height=1.5) ) +facet_wrap(~year,nrow = 5 , ncol = 2) +theme_classic() 

