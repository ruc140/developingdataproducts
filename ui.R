library(shiny)
shinyUI(fluidPage(
  titlePanel("Temperature Unit Converter"),
  sidebarLayout(
    sidebarPanel(
      h3("Convert from"),
      selectInput("unit", "Unit", choices=c("Celsius", "Farenheit")),
      numericInput("numeric1", "Input degree:", 0),
      submitButton("Convert")
    ),
    
    mainPanel(
      h3("Convert to"),
      textOutput("numeric2"),
      textOutput("unit2")
    ))
))