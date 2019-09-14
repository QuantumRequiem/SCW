#My first R Command
print("Good Morning")
#variable
name <- "jane"
price <- 3.99
print(price)
ls()
rm(price)
ls()
mass <- 64
sqrt(64)
res <- sqrt(mass)
getwd()
help(print)
#install a package
install.packages("knitr")
library(knitr)
score <- 79
typeof(score)
score <- 79L
typeof(score)
is.integer(score)
typeof(is.integer(score))
v <- c(4,5,6)
v <- c(1:3,45)
length(v)
str(v)
head(v,n=2)
tail(v,n=2)
#manipulate the vector
v <- c(v,56)
str(v)
m <- matrix(c(1:18),3,6)
m
dim(m)
cont <- factor(c("asia","europe","america","africa","ocenia"))
str(cont)
l <- list("Afghanistan", 1952, 88787)
print(l)
typeof(l)
str(l)
menuitems <- c("chicken","soup","salad","tea")
menutypes <- factor(c("solid","liquid","solid","liquid"))
menucost <- c(4.99,2.99,3.29,1.89)
myorder <- list(menuitems,menutypes,menucost)
print(myorder)
myorder_df <- data.frame(menuitems,menutypes,menucost)
print(myorder_df)

v <- c(2:10)
v[2]
v[c(3:6)]
v[-c(3:6)]
myorder[1]
myorder_df[1:3, ]
x <- myorder_df$menutypes

v <- c(1,5,3,4,5)
v1 <- v[v==5]
v1

df1 <- myorder_df[myorder_df$menutypes=="solid",]
df1
df2 <- myorder_df[myorder_df$menucost>3,]
df2

data <- read.table("gapminder.txt", header = TRUE)
head(data)
str(data)
typeof(data)
x1<-data[,c(3,5)]
head(x1)

data[data$country=="Sweden",]
unique(data[,1])

data[data$lifeExp<70,]
