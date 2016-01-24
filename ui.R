
# This is the user-interface definition of a Shiny web application.
# This application calculates your Body Mass Index (BMI) based on weight and height inputs.
# Based on the BMI no results, the application will tell in which category below you fall into:
# 1) Underweight
# 2) Normal weight
# 3) Overweight
# 4) Obese

library(shiny)

shinyUI
  (pageWithSidebar(
    headerPanel("BMI Calculator"),
    sidebarPanel(
      numericInput('weight', 'Your Weight in Kilogram(kg)', 0, min = 0, max = NA, step = 5),
      numericInput('height', 'Your Height in Meter(m)', 0, min = 0, max = NA, step = 5),
      submitButton('Submit')
    ),
    mainPanel(
      h2('Body Mass Indicator Calculator (BMI)'),
      p('This Metric BMI Calculator will calculate your BMI and indicate where you stand in the BMI table chart.'),
      p('Please enter your weight in Kilogram and height in Meter and press "SUBMIT" button.'),
      h3('Below is the BMI table chart.'),
      p('BMI no less than 18.5 ==> Underweight'),
      p('BMI no 18.5 to 24.9 ==> Normal Weight'),
      p('BMI no 25 to 29.9 ==> Overweight'),
      p('BMI no 30 or greater ==> Obese'),
      h4('You entered weight:'),
      verbatimTextOutput("weight"),
      h4('You entered height:'),
      verbatimTextOutput("height"),
      h4('Your BMI is '),
      verbatimTextOutput("bmi1"),
      h4('You are '),
      verbatimTextOutput("bmi2")
    )
  )
)
