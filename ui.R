library(shiny)
shinyUI(fluidPage(
  titlePanel("Predict Weight (1000lbs) from MPG"),
  sidebarLayout(
    sidebarPanel(
      sliderInput("sliderMPG", "What is the MPG of the car?", 10, 35, value = 20),
      checkboxInput("showModel1", "Show/Hide Model 1", value = TRUE),
      checkboxInput("showModel2", "Show/Hide Model 2", value = TRUE)
      #submitButton("Submit")
    ),
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Plot", br(),
                           plotOutput("plot1"),
                           h3("Predicted Weight (1000lbs) from Model 1:"),
                           textOutput("pred1"),
                           h3("Predicted Weight (1000lbs) from Model 2:"),
                           textOutput("pred2")
                           
                           ),
                  tabPanel("Help", br(), 
                           h3("1) Move the Slider in the Plot tab to select mpg") ,
                           h3("2) Values of corresponding weight is shown using two models "),
                           h3("3) ui.R and server.R are kept on "),
                           a(href="https://github.com/shrikondra/DDP", "Github Link")
                           )
      )
      
      
      
    )
  )
))