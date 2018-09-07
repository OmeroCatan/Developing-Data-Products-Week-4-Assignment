# Load required packages

library(shiny)
library(datasets)

# Load CO2 dataset
CO2Data <- CO2

shinyServer(function(input, output) {
  
  # Compute the forumla text in a reactive expression
  formulaText <- reactive({
    paste("uptake ~", input$variable)
  })
  
  # Return the formula text to print as a caption
  output$caption <- renderText({
    formulaText()
  })
  
  # Generate a plot of the requested variable against the uptake levels
  output$CO2Plot <- renderPlot({
    boxplot(as.formula(formulaText()), 
            data = CO2Data)
  })
})