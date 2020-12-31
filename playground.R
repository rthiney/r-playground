# Load the gapminder package
library(gapminder)
# Load the dplyr package
library(dplyr)

library(ggplot2)
# Look at the gapminder dataset
gapminder_2007 <- gapminder %>%
    filter(year == 2007) %>%
    mutate(lifeExpMonths = lifeExp * 12) %>%
    arrange(desc(lifeExpMonths))


print(gapminder_2007)

ggplot(gapminder_2007, aes(x = gdpPercap, y = lifeExp)) +
    geom_point() +
    scale_x_log10()