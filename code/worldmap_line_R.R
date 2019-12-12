###########
# here is the link for iframe
# https://plot.ly/~jasmineqyj/1/#/
###########

library(tidyverse, quiet = True)
library(rnaturalearth)
library(rnaturalearthdata)
library(ggplot2)
library(viridis)
library(maps)
library(plotly)

earthquake_data <- read_csv("../data/earthquake_data.csv") %>%
  rename(region = Country) %>%
  mutate(region = ifelse(region == "United States", "USA", region)) 

# Selecting countries and filtering their data
country_list <- list("China", "Japan", "Indonesia", "Haiti", "Iran", "Pakistan", 
                     "India", "Turkey", "Afghanistan", "Nepal")

line_chart_data <- tibble(Year = seq(1990, 2017, by = 1))
for (c in country_list) {
  data = earthquake_data %>% 
    filter(region == c) %>% 
    arrange(Year) %>% 
    pull(Death_rate)
  line_chart_data = add_column(line_chart_data, !!c := data)
}

# updatemenus component (including selected country's data in the plot)
updatemenus <- list(
  list(
    buttons = list(
      list(
        label = "China",
        method = "update",
        args = list(list(visible = c(FALSE, TRUE, FALSE, FALSE, FALSE, FALSE,
                                     FALSE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "China"))),
      list(
        label = "Japan",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, TRUE, FALSE, FALSE, FALSE,
                                     FALSE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "Japan"))),
      list(
        label = "Indonesia",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, TRUE, FALSE, FALSE,
                                     FALSE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "Indonesia"))),
      list(
        label = "Haiti",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, TRUE, FALSE,
                                     FALSE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "Haiti"))),
      list(
        label = "Iran",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, TRUE,
                                     FALSE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "Iran"))),
      list(
        label = "Pakistan",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
                                     TRUE, FALSE, FALSE, FALSE, FALSE)),
                    list(title = "Pakistan"))),
      list(
        label = "India",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
                                     FALSE, TRUE, FALSE, FALSE, FALSE)),
                    list(title = "India"))),
      list(
        label = "Turkey",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
                                     FALSE, FALSE, TRUE, FALSE, FALSE)),
                    list(title = "Turkey"))),
      list(
        label = "Afghanistan",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
                                     FALSE, FALSE, FALSE, TRUE, FALSE)),
                    list(title = "Afghanistan"))),
      list(
        label = "Nepal",
        method = "update",
        args = list(list(visible = c(FALSE, FALSE, FALSE, FALSE, FALSE, FALSE,
                                     FALSE, FALSE, FALSE, FALSE, TRUE)),
                    list(title = "Nepal")))
  )))

# drawing the plot
p <- line_chart_data %>%
  plot_ly(type = 'scatter', mode = 'lines') %>%
  add_lines(x=~Year, y=~China, name="China",
            line=list(color="#F06A6A")) %>%
  add_lines(x=~Year, y=~Japan, name="Japan",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Indonesia, name="Indonesia",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Haiti, name="Haiti",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Iran, name="Iran",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Pakistan, name="Pakistan",
            line=list(color="#33CFA5"), visible = FALSE) %>%
  add_lines(x=~Year, y=~India, name="India",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Turkey, name="Turkey",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Afghanistan, name="Afghanistan",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  add_lines(x=~Year, y=~Nepal, name="Nepal",
            line=list(color="#F06A6A"), visible = FALSE) %>%
  layout(title = "Please select a country", showlegend=FALSE,
         xaxis=list(title="Year"),
         yaxis=list(title="Death Rate on Log Scale 10", type = "log"),
         updatemenus=updatemenus)

# iframe api set-up
Sys.setenv("plotly_username"="jasmineqyj")
Sys.setenv("plotly_api_key"="wUGGIiyT6HAZSUvAe8ym")

api_create(p, filename = "country_line")
