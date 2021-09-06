data(iris)

head(iris)

#Creating a scatterplot
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length",
  ylab = "Petal width")

#Creating a linear regression model
model <- lm(
  formula = Petal.Width ~ Petal.Length,
  data = iris)

#Drawing the line on the plot
lines(
  x = iris$Petal.Length,
  y = model$fitted.values,
  col = "red",
  lwd = 3
)

#Getting correlation coefficient
cor(x= iris$Petal.Length,
    y = iris$Petal.Width)

#Predicting new values according to the model 
#This function predicts the petal width values for the given petal length values relatively
predict(
  object = model,
  newdata = data.frame(
    Petal.Length = c(1 , 2, 3)
  )
)
