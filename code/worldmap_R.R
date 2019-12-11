library(tidyverse, quiet = True)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggplot2)
library(viridis)
library(maps)
library(plotly)

# Wrangling with world map data
earthquake_data <- read_csv("../data/earthquake_data.csv") %>%
  rename(region = Country) %>%
  mutate(region = ifelse(region == "United States", "USA", region)) 

worldmap <- map_data('world')
earthquake_data <- left_join(earthquake_data, worldmap, by = "region") %>% 
  select(-subregion, -order)

# Set up a plain theme for world map
plain <- theme(
  axis.text = element_blank(),
  axis.line = element_blank(),
  axis.ticks = element_blank(),
  panel.grid = element_blank(),
  axis.title = element_blank(),
  panel.background = element_rect(fill = "lightblue"),
  plot.title = element_text(hjust = 0.5),
  legend.position = "none"
)

# Drawing the map using ggplot2
p <- ggplot(data = earthquake_data, aes(long, lat, group = group, frame = Year,
                                         text = paste("Country: ", region, "\n",
                                                     "# Deaths: ", Death_earthquake))) +
  coord_fixed(1.3) +
  geom_polygon(aes(fill = Death_rate), color = "darkblue", size = 0.15) +
  scale_fill_viridis_c(option = "magma", direction = -1, trans = "log") + 
  labs(title = "World Map of Annual Death Rate") +
  plain

# Add ggplotly animations to the plot to reflect selected year changes
p <- ggplotly(p, tooltip = c('text', 'frame')) %>% 
  animation_opts(transition = 0.01, easing = "linear", redraw = TRUE, mode = "immediate")
