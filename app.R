
library(dashCoreComponents)
library(dashHtmlComponents)
library(dash)


app = Dash$new()


app$layout(htmlDiv(list(
  htmlH1('Impact of Disasters on Human Lives', style=list(borderWidth = 0, fontFamily = 'Helvetica', color = 'darkblue')),
  htmlH6('NOTE: Sometimes plotly server takes a little longer to process request so if you see Error 404 - Not Found, please refresh!', style = list(fontFamily = 'Helvetica')),
  dccTabs(id="tabs", value='tab-1', children=list(
    dccTab(label='Descriptive Analysis', value='tab-1'),
    dccTab(label='Earthquake Global Impact', value='tab-2')
  )),
  htmlDiv(id='tabs-content'),
  dccMarkdown('[Data Source](https://ourworldindata.org/natural-disasters#summary)', style = list(fontFamily = 'Helvetica')),
  dccMarkdown('This Dash app is collaborative work of (alphabetically): Gaurav Sinha, Jack Tan, Jasmine Qin & Karanpal Singh (Group 201)', style = list(fontFamily = 'Helvetica'))
)))

app$callback(
  output = list(id='tabs-content', property = 'children'),
  params = list(input(id = 'tabs', property = 'value')),
  function(tab){
    if(tab == 'tab-1'){
      return(htmlDiv(list(
        htmlP('Plot 1 (top): This plot shows the average number of deaths per event of different natural disasters. Since earthquake is the highest, we choose it as the primary target of investigation.', style = list(fontFamily = 'Helvetica')),
        htmlP('Plot 2 (bottom): This plot shows the trend of annual death rate due to earthquakes from 1990 to 2017 on a worldwide scale.', style = list(fontFamily = 'Helvetica')),
        htmlIframe( src = 'https://plot.ly/~ksingh20/1/#/', height=500, width=1000, style=list(borderWidth = 0)), #space
        htmlIframe( src = 'https://plot.ly/~ksingh20/3/#/', height=500, width=1000, style=list(borderWidth = 0)) #space


      )))
    }

    else if(tab == 'tab-2'){
      return(htmlDiv(list(
        htmlP('Plot 1 (top): This plot shows the impact that earthquakes have had on different countries over the years.', style = list(fontFamily = 'Helvetica')),
        htmlP('Plot 2 (bottom): This plot shows the historical trend of earthquake for a given country.', style = list(fontFamily = 'Helvetica')),

        htmlDiv(list(
          
          htmlIframe( src = 'https://plot.ly/~qinyijia/1/#/', height=500, width=1000, style=list(borderWidth = 0)), #space
          htmlIframe(src = 'https://plot.ly/~jasmineqyj/1/#/',height=500, width=1000, style=list(borderWidth = 0)) #space

        ), className = 'row')
       
 


      )))
    }
  }



)

app$run_server(host = "0.0.0.0", port = Sys.getenv('PORT', 8050))