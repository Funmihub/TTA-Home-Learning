#Creating Three Vectors with five integers
a <- c(1,2,3,4,5)
b <- c(6,7,8,9,10)
c <- c(11,12,13,14,15)
typeof(a)
typeof(b)
typeof(c)
print(a)
print(b)
print(c)
d <- c(a,b,c)
print(d)

#Combining the vector to become 2x5 matrix
#e1 <- cbind(a,b,c)
e2 <- rbind(a,b,c)
#Printing the content of the Matrix
#print(e1)
print(e2)
#plot(e, type ="o", col="blue", pch=16)
f <- matrix(1:15, byrow = TRUE, nrow = 3)
f
dim(f)
matplot(f, type ="o", pch=15, col=1:3)
matplot(e2, type ="o", pch=15, col=1:3)
#matplot(e1, type ="o", pch=15, col=1:3)
#Creating Data Frame for 5 employees
Name_emp <- c("Ade", "Abi", "bim", "jam" ,"dam")
Age_emp <- c(35, 40, 37, 32 ,25)
Role_emp <- c("Secretary", "Director", "IT", "Admin" ,"Cleaner")
Lserv_emp <- c(19, 5, 3, 7 ,6)
frame <- data.frame(Name_emp, Age_emp, Role_emp, Lserv_emp)  
print(frame)

#Plotting using ggplot2
install.packages("ggplot2")
library(ggplot2)
data <- seq(1:20)
#x <- seq(1:20)
#x
#y <- seq(x^2:20)
#y
# to find a toy data set
data(package = "ggplot2")


#Scatter plot with qplot

ggplot2::mpg

qplot(data = mpg, x = cty, y = hwy, geom = "point", color = class)

# bar plot and stacked bar plot

ggplot2::diamonds

?diamonds
diamonds

qplot(data = diamonds, y = clarity, geom = "bar", fill = cut)

#Input user name
Name_input <- readline("Hello there: Enter your name ")

Age_input <- readline("Hello there: Enter your Age ")
paste("Welcome",Name_input, "you are", Age_input, "years old")

#create a sequence of numbers from 20 to 50
data2 <- seq(20:50)
mean(data2)
sum(data2)

# create a vector which contains 10 random integer values between -50 and +50
Rand_int <- runif(10, min=-50, max=50)
Rand_int
x_rand<-round(Rand_int)
print(x_rand)

#Optional Challenge
#to get the first 10 Fibonacci numbers.
Fibonacci <- numeric(10)
Fibonacci[1] <- Fibonacci[2] <- 1
for (i in 3:10) Fibonacci[i] <- Fibonacci[i - 2] + Fibonacci[i - 1]
print("First 10 Fibonacci numbers:")
print(Fibonacci)

#printing numbers from 1 to 100 and print "Fizz" for multiples of 3, 
#print "Buzz" for multiples of 5, and print "FizzBuzz" for multiples of both
Data3 <- seq(1:100)
print(Data3)

for (n in 1:100) {
  if (n %% 3 == 0 & n %% 5 == 0) {print("FizzBuzz")}
  else if (n %% 3 == 0) {print("Fizz")}
  else if (n %% 5 == 0) {print("Buzz")}
  else print(n)
}