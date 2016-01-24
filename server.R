
# This is the server logic for a Shiny web application.
# This application calculates your Body Mass Index (BMI) based on weight and height inputs.
# Based on the BMI no results, the application will tell in which category below you fall into:
# 1) Underweight
# 2) Normal weight
# 3) Overweight
# 4) Obese

library(shiny)

BMIcalc1 <- function(weight, height) weight/(height*height);
BMIcalc2 <- function(weight, height)
  {
  BMI <- weight/(height*height);
  if (BMI < 18.5) BMIResult <- "UNDERWEIGHT";
  if (BMI >= 18.5 && BMI <= 24.9) BMIResult <- "NORMAL";
  if (BMI >= 25 && BMI <= 29.9) BMIResult <- "OVERWEIGHT";
  if (BMI >= 30) BMIResult <- "OBESE"
  return(BMIResult)
  }

shinyServer(
  function(input, output) {
    output$weight <- renderPrint({input$weight})
    output$height <- renderPrint({input$height})
    output$bmi1 <- renderPrint({BMIcalc1(input$weight, input$height)})
    output$bmi2 <- renderPrint({BMIcalc2(input$weight, input$height)})
  }
)
