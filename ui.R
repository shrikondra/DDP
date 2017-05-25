library(shiny)
shinyUI(fluidPage(
  titlePanel("Violin Plot for various variables for Transmission type comparison in mtcar dataset"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("MTCARS", "Variables",
                   c("MPG" = "mpg",
                     "DISPLACEMENT" = "disp",
                     "WEIGHT" = "wt",
                     "HORSE POWER" = "hp"))
    ),
    mainPanel(
      
      tabsetPanel(type = "tabs",
                  tabPanel("Plot", br(),
                           plotOutput("plot1")
                           ),
                  tabPanel("Help", br(), 
                           h3("1) Select the Radio button for corresponding variable") ,
                           h3("2) A Violin plot will be shown for comparing the Transmision type"),
                           h3("3) ui.R and server.R are kept on "),
                           a(href="https://github.com/shrikondra/DDP", "Github Link")
                           )
      )
      
      
      
    )
  )
))