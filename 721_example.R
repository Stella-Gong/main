library(ggplot2)

set.seed(123)
data <- data.frame(
  x = 1:100,
  y = 3 + 0.5 * (1:100) + rnorm(100, mean = 0, sd = 10)
)

ggplot(data, aes(x = x, y = y)) +
  geom_point(color = "steelblue") +
  geom_smooth(method = "lm", color = "red", se = TRUE) +
  labs(
    title = "Scatterplot with Regression Line",
    x = "X Variable",
    y = "Y Variable"
  )
