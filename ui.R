#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
# 
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("Will the patient be well controlled with vit K antagonists?"),
  
  # Box with yes or no variables
  sidebarLayout(
    sidebarPanel(
       numericInput("numeric1","Number of tablets per day",
                   min = 1,
                   max = 50,
                   value = 30),
       submitButton("Submit")
    ),
    
    # Tells you the probability of being well controlled on vitK antagonist
    mainPanel(
      h3("Result of prediction"),
      textOutput("pred1")
    )
  )
))
