### BUBBLE CHART ###

# Import ggplot2 package
library(ggplot2)        

# Pre-set the black and white theme
theme_set(theme_bw())                             

# Name and read the data set file
df <- read.csv()                                  

# Define selection variables
df_select <- df[df$#(column) %in% c(),]

gg <- ggplot(data = df_select,                    # name the plot and load data set
             aes(x = ,                            # set the x variable
                 y = )) +                         # set the y variable
  geom_jitter(aes(col = ,                         # set the category group corresponding to the bubbles color
                  size = )) +                     # set the category group corresponding to the bubbles size
  geom_smooth(aes(col = ),                        # set the smoothing lines colors (same as two lines above)
              method = "auto",                    # set the smoothing lines size (same as two lines above)
              se = F) +                           # set the confidence intervals (T or F)
  labs(title = "",                                # type in the plot title
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

df_select <- mpg[mpg$manufacturer %in% c("audi","ford","honda","hyundai"),]

gg <- ggplot(data = df_select,
             aes(x = displ, 
                 y = cty)) +
  geom_jitter(aes(col = manufacturer, 
                  size = hwy)) + 
  geom_smooth(aes(col = manufacturer), 
              method = "lm", 
              se = F) + 
  labs(title = "Bubble Chart",
       subtitle = "mpg: Displacement vs City Mileage",
       x = "Displacement",
       y = "City Mileage",
       caption = "Source: mpg data set")

print(gg)
