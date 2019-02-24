#
# This is the server logic of a Shiny web application. You can run the 
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)
library(caret)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  modFit1<-load(file="modFit1.R")
 
  predicted<-reactive({
    Numero_Comp_input<-input$numeric1
    predict(get(modFit1), newdata=data.frame(Numero_Comp=Numero_Comp_input))
  })

  output$pred1<-renderPrint({
    predicted() 
    })

})
