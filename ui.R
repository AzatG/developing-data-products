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
  titlePanel("First part of Final Project in developing data products"),
  helpText("Don't expect much, Aim of this app is to prove that I can manage shiny apps"),
  helpText("I am going to generate histogram and text input that will be displayed when Ready button is submitted"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("n", "Number of observations in the sample", min = 10, max = 100, value = 100,
                  step = 10),
      textInput("text", "Text:", "Your input"),
      submitButton("Ready")),
    
    mainPanel(
      plotOutput("plot1", width = 400, height = 300),
      verbatimTextOutput("text")
    )
  )
  
))
