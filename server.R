library(shiny)
shinyServer(function(input, output){
  degree <-reactive({
    if(input$unit=="Celsius"){
        degree <- (input$numeric1*9/5) +32}
    else{
        degree <- (input$numeric1-32)*5/9 
    }
  })
  
  convertunit <-reactive({
    if(input$unit=="Celsius"){unit2 <- "Farenheit"}
    else{unit2 <- "Celsius"}
  })      
  
  output$numeric2 <- renderText(degree())
  output$unit2 <- renderText(convertunit())
})