#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library('ggplot2')

selcols<-c("carat","depth","table","price","x","y","z")  

pageWithSidebar(
    headerPanel('Diamonds Dataset K-Means Clustering Tool'),
    sidebarPanel(
        selectInput('xcol', 'X Variable', selcols, selected=selcols[[4]]),
        selectInput('ycol', 'Y Variable', selcols, selected=selcols[[1]]),
        sliderInput('clusters', 'Cluster count', 5, min = 1, max = 9),
        submitButton("Submit")
    ),
    mainPanel(
        plotOutput('plot1')
    )
)
