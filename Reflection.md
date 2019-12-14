# Reflections

## Areas where our app does well:
- God damn this app is sexy.
- The colors used is very good. It is color-blind people friendly.
- Font size is good. It is of readable size.
- Plots are interactive and I like it. 
- Axis labels are well chosen, they are very representative of what is being plotted.
- Line width is very good, can see from a distance.
- Plot sizes are good, they take up the majority of the screen.
- Plots are simple and to the point, answers the research question very directly.

## Limitations of our app:
- It doesn’t support UI/UX bootstrapping, so we don’t have good control over UI (I managed to do whatever I could do to keep it aligned and simple)
- Chart to Chart Interactivity is not intuitive at all in RDash. However, for our World Map, it is not possible to have this at all due to known geospatial issues (Firas mentioned about map libraries incompatibility with Rdash)
- Interactive World Map is not interactive once rendered by ggplotly
- Some countries in the world map plot have missing data, they appear as blank. This makes the overall plot kind of confusing.
- Only earthquakes analyzed, it is not descriptive of all natural disasters in the world. 
- Seems to a bug on the axis of plot 2 on earthquake, a little bit confusing
- Log scale of bottom left changes with the year. This makes it hard to compare the severity of earthquakes between countries using color. Since the same color can mean two different numbers.
- On this dashboard we focuses on visualizing impacts of earthquakes rather than providing a comprehensive view of all natural disasters due to data limitation. If we had enough country-level data, we could have created a more informative dashboard on which users are able to navigate to a certain disaster of interest.
- If time permitted, we could have included more detailed information on the dashboard, for example about some significant events, to provide users more context around this natural disaster topic as opposed to just presenting the graphs.

  
## Future Improvements and Additions:
- Going to move the legend on plot 1 of 'Descriptive Analysis’ tab.
- Can add data about other disasters, and see if differnt types of natural diasters are correlated to each other.
- Upon selecting a type of natural disaster, the plot on the top right would change accordingly to reflect that disaster type.
- Can apply LOESS (locally estimated scatterplot smoothing) or LOWESS (locally weighted scatterplot smoothing) to help plot the trend of a type of diaster over time.
- Change the log scale of the bottom left graph to be fixed.
- Can add outlines to every country, this resolves concern of countries with no data.
