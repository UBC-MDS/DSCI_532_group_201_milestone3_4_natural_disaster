###########
# here is the link for iframe
# https://plot.ly/~qinyijia/1/#/
###########

library(tidyverse, quiet = True)
library(ggplot2)
library(viridis)
library(maps)
library(plotly)
library(sf)

earthquake_data <- st_read("../data/world_map.geojson") %>% 
  select(-Code, -country_code) %>% 
  group_by(country) %>% 
  summarise(Death_earthquake = sum(Death_earthquake),
            Death_rate = sum(Death_earthquake) / sum(Death_total))

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

p <- ggplot(data = earthquake_data, aes(text = paste("Country: ", country, "\n",
                                                     "# Deaths: ", Death_earthquake))) +
  geom_sf(aes(fill = Death_rate), lwd = 0.1) +
  scale_fill_viridis_c(option = "magma", direction = -1, trans = "log") + 
  labs(title = "World Map of Total Death Rate from 1990 to 2017") +
  plain

p <- ggplotly(p, tooltip = c('text'))

Sys.setenv("plotly_username"="qinyijia")
Sys.setenv("plotly_api_key"="WMUwTx100W9uBEaCIB5p")
api_create(p, filename = "world_map")