#https://cran.r-project.org/web/packages/olsrr/olsrr.pdf
install.packages('lubridate')
library(olsrr)
model <- lm(mpg ~ disp + hp + wt + qsec, data = mtcars)
k <- ols_step_all_possible(model)
plot(k)
k
summary(lm(mpg ~ wt, data=mtcars))
summary(lm(mpg ~ wt+ hp, data=mtcars))

