library(shiny)

# Define ui file for the application
shinyUI(pageWithSidebar(
  
  # Create the title
  headerPanel("CO2 Uptake in Grass Plants"),
  
  # Add a sidebar with a drop-down menu to change the variable
  # to plot against the "uptake" variable
  
  sidebarPanel(
    selectInput("variable", "Variable:",
                list("Plant" = "Plant", 
                     "Type" = "Type", 
                     "Treatment" = "Treatment",
                     "conc" = "conc"))
  ),
  
  # Display the output from the application server.R file
  
  mainPanel(
    h3(textOutput("caption")),
    
    plotOutput("CO2Plot")
  )
))