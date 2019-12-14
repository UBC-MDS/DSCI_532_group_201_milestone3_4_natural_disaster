# Reflections

## Addressing Previous TA Comments:
- **Comment:** Be careful to not copy text form your proposal usage scenario into your README.md. You need a separate description!
- **How this was address:** We wrote an eloquent introduction to our app. Read it, you'll be inspired.
<br>
- **Comment:** It is not entirely clear what interactivity is included. You could add a little paragraph outlining major features and interactivity.
- **How this was address:** Fret not! A big paragraph has been added in README.md file outlining all the features and interactivity of our lovely app.
<br>
- **Comment:** Team work contract could be more specific.
- **How this was address:** We agree! We added section on what each person is repsonsible for.
<br>
- **Comment:** Research Questions you want to answer are not clear.
- **How this was address:** Which research question? Your question is not clear either.
<br>
- **Comment:** You needed to update your proposal based on the feedback you previously received from Stef
- **How this was address:** Will do! Doing! Done!
<br>
- **Comment:** Looking at your Python dashboard, if a user lands to your dashboard, it is not clear what your data is showing. What is the time period? Is this global? Is the first plot showing average numbers? How many events was this calculated for? Death rate corresponds to total global deaths? Having a few sentences related to your data would be useful, and improving titles as well
- **How this was address:** Yep, added some sentences at the top to address these issues. To answer your questions though, yes, yes, yes and yes! 
<br>
- **Comment:** Last plot has confusing units, see if there is a way to improve this
- **How this was address:** We added a description at the top to help explain what this plot is doing. But for real though, confusion is simply a state of mind. Do some meditation! Buddha became clairvoyant through meditation. Have you ever heard of Buddha being confused? No! 😇
<br>
- **Comment:** Team contract is ok but it would've been better to have specific meeting dates
- **How this was address:** Life is ever changing, each a flowing river. It is important to live life as it is, dont't overplan stuff! Imagine how mundane life would be if it were deterministic. Each of us a gear in the great big machine of society. To avoid this, we decided to be spontaneous. Work when we can! Let it be 9pm, 2am, in class! As long as it's done before the due date, we gucci.

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
