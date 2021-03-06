### COUNTS PLOT ###

# Import ggplot2 package
library(ggplot2)         

# Pre-set the black and white theme
theme_set(theme_bw())      

# Name and read the data set file
df <- read.csv()                                

gg <- ggplot(data = df,                          # name the plot and load data set
             aes(x = ,                           # set the x variable
                 y = )) +                        # set the y variable
  geom_count(col = "blue",                       # set the points color
             show.legend = T) +                  # set the legend display (T or F)
  labs(title = "",                               # type in the plot tile
       subtitle = "",                            # type in the plot subtitle
       x = "",                                   # type in the x-axis label
       y = "",                                   # type in the y-axis label
       caption = "Source: ") +                   # type in additional captions

# Print plot  
print(gg)                                       

# EXAMPLE

library(ggplot2)
theme_set(theme_bw())                         
df <- mpg

gg <- ggplot(df, 
             aes(x = cty, 
                 y = hwy)) +
  geom_count(col = "blue", 
             show.legend = T) + 
  labs(title = "Counts Plot",
       subtitle = "mpg: city vs highway mileage",
       x = "cty",
       y = "hwy",
       caption = "Source: mpg data set")

print(gg)
