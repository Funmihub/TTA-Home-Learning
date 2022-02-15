##"C:\Users\isxaa7\Desktop\TechTalent\DataAcademy\student_scores.csv"
#install.packages("ggplot2")
library(ggplot2)
# Dataset
head(iris)
# Scatterplot
plot(x=iris$Sepal.Length, y=iris$Sepal.Width, 
     xlab="Sepal Length", ylab="Sepal Width",  main="Sepal Length-Width")
library(ggplot2)


#qplot(x = Sepal.Length, y = Sepal.Width, data = iris, 
#      xlab="Sepal Length", ylab="Sepal Width", 
#      main="Sepal Length-Width", color=Species, shape=Species)

scatter <- ggplot(data=iris, aes(x = Sepal.Length, y = Sepal.Width)) 
scatter + geom_point(aes(color=Species, shape=Species)) +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

scatter + geom_point(aes(color = Petal.Width, shape = Species), size = 2, alpha = I(1/2)) +
  geom_vline(aes(xintercept = mean(Sepal.Length)), color = "red", linetype = "dashed") +
  geom_hline(aes(yintercept = mean(Sepal.Width)), color = "red", linetype = "dashed") +
  scale_color_gradient(low = "yellow", high = "red") +
  xlab("Sepal Length") +  ylab("Sepal Width") +
  ggtitle("Sepal Length-Width")

#Box Plot
boxplot(Sepal.Length~Species,data=iris, 
        xlab="Species", ylab="Sepal Length", main="Iris Boxplot")

library(ggplot2)
box <- ggplot(data=iris, aes(x=Species, y=Sepal.Length))
box + geom_boxplot(aes(fill=Species)) + 
  ylab("Sepal Length") + ggtitle("Iris Boxplot") +
  stat_summary(fun.y=mean, geom="point", shape=5, size=4) 

#Qplot
qplot(x=iris$Sepal.Length, y=iris$Sepal.Width,)
# Add line
qplot(x=iris$Sepal.Length, y=iris$Sepal.Width, geom=c("point", "line"))
# Use data from a data frame
qplot(mpg, wt, data=mtcars)

#Reference:
#http://sthda.com/english/wiki/qplot-quick-plot-with-ggplot2-r-software-and-data-visualization
#https://www.publichealth.columbia.edu/sites/default/files/media/fdawg_ggplot2.html
