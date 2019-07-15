Introduction to the "Temperature Unit Converter""
========================================================
author: Rubing
date: 7/14/2019
autosize: true

The calculation is based on the following formula
========================================================


- Farenheit = Celsius * 9/5 + 32 
- Celsius = (Farenheit - 32)*5/9


Sidebar Panel
========================================================
This includes 2 inputs: 

- Input the temperature degree
- Select the original unit for this degree


Main Panel
========================================================
This includes the degree and unit it convert to. 




Reactive Code
========================================================
The calculation includes some reactive code as following:

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

