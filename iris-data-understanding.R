library(datasets)
data("iris")
iris <- datasets::iris
library(RCurl)
iris <- read.csv(text = getURL("https://raw.githubusercontent.com/dataprofessor/data/refs/heads/master/iris.csv"))
View(iris)
head(iris,5)
tail(iris,4)
#summary
summary(iris)
summary(iris$Sepal.Length)
#missing values check
sum(is.na(iris))
#skimming information 
library(skimr)
skim(iris)
#group data by species and perform skim
iris %>%
  dplyr::group_by(Species) %>%
  skim()
#R base plot
plot(iris)
plot(iris, col = "red")
#scatter plot
plot(iris$Sepal.Width, iris$Sepal.Length)
plot(iris$Sepal.Width, iris$Sepal.Length, col = "red")
plot(iris$Sepal.Width, iris$Sepal.Length, col = "red", xlab = "Sepal.Width", ylab = "Sepal.Length")
#Histogram
hist(iris$Sepal.Width)
hist(iris$Sepal.Length)
hist(iris$Sepal.Length, col = "blue")
#Feature Plot
featurePlot(x = iris[,1:4], 
            y = iris$Species, 
            plot = "box",
            strip=strip.custom(par.strip.text=list(cex=.7)),
            scales = list(x = list(relation="free"), 
                          y = list(relation="free")))
