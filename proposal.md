# Project Proposal: Natural Disasters And Their Impact Across The World

## Motivation and Purpose

Every year natural disasters kill many people across the world. Natural disasters are of various forms and different disasters create different challenges for mankind. As it is said "prevention is better than cure", if we have information about which disaster is most life-threatening, it will help us to be better prepared against that natural disaster. Studying the distribution of the disaster across the world will help us to identify the critical regions so that the government, as well as people of those regions, would be able to take preventive measures to minimize the loss of life.

To address this problem, we will create a dashboard where the user would be able to visually analyze which disaster is most life-threatening. The user would also be able to identify the regions which are most impacted by the disaster on a world map. The user would be able to vary the year to see the changes in the distribution of the disaster overtime on the map. The dashboard will also allow the user to click on any country and see the trend of the natural disaster over the years. To understand the extent of damage caused by the disaster, the user will have an option to select a particular year to see how many people died due to the natural disaster analyzed. 

## Data Description

We will first be analyzing data for all natural disasters on a global scale from the `global_data.csv`. This dataset contains information for 9 types of disasters stored in the variable `Entity`. More specifically, we will be comparing impacts caused by drought, earthquake, extreme temperature, extreme weather, flood, landslide, mass movement, volcanic activity, and wildfire. Time of the records are stored in the variable `Year` and maximum year range for all disasters is from 1900 to 2018. Each disaster in each year has 2 associated variables that describe statistics of the events: number of deaths (`Deaths`) and count of the disaster (`Counts`). Using this data we will also derive a new variable, named `death_per_event`, which is the number of death per occurrence of an event. We will be using another wrangled dataset named `earthquake_data.csv` containing specifically earthquake information from 1990 to 2017. This dataset is on a country level compared to the other global disaster dataset. Columns `Country` and `Code` contains the country names and codes which will be used for choropleth mapping on a world map. Annual number of people died from an earthquake and total number of people died in each country are stored in columns `Death_earthquake` and `Death_total` respectively. We will be using death rate in our analysis so another new variable `Death_rate` will be derived from these two columns. Most of the data come from the website [ourworldindata.org](https://ourworldindata.org/) and annual total number of death for each country is from [Global Health Data Exchange](http://ghdx.healthdata.org/).

## Research Questions to Explore

There are many possible questions that can be answered with the dashboard. We can explore the total death count due to earthquakes type over a certain period of time. We can also use the visualization to explore what percentage of total death rate earthquakes contribute to for a given country and year. Lastly, we can compare different countries to see which one is most impacted by earthquakes for a given year. With this information we are able to **help** answer:

- Which country is most effected by earthquakes?
- How many people of a given country has died from earhquakes?
- What is the maximum number of people that have died from earthquakes for a given year in a given country?
- Which countries are not effected by earthquakes?
- What percentage of global death is due to earthquakes?
- In which year did earthquakes contribute the highest percentage to global death?
- What is the average number of deaths of year due to earthquakes for a given country?
- How to prevent the next mass extinction?

## Usage Scenario

Bob is working for an international humanitarian organization. He is trying to see where to allocate funds for earthquake diaster relief. He wants to explore historical data of how earthquakes affected different countries. This helps him to decide which countries are most effected by earthquakes every year. While using our Dash app, he noticed that in terms of absolute deaths per year due to earthquakes, China and India appeared to be highest every single year. However, while exploring the percentage that eqarthquakes contribute to the annual death rate, he discovered that Haiti was the highest due to the small population of the country. He also discovered that earthquakes have had an increasing impact on the country in recent years. From this data, Bob was able to make the informed decision that it is best to provide monetary support to Haiti instead. Due to the insightfulness of this Dash application, Bob nominated it to be the "App of the Year". Many people started using this app to grow insight of how earthquakes effect different regions in the world. The app ends up getting improved and wins a Nobel Prize.
