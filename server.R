library(shiny)
library(ggplot2)
shinyServer(function(input, output) {

  output$plot1 <- renderPlot({
    mpgInput <- input$sliderMPG
    
    var <- input$MTCARS
    labs <- paste("c(", "\"automatic\",\"manual\")")
    ggplot(mtcars, aes_string(y=var, x="factor(am)", fill="factor(am)")) +
      geom_violin(colour="black", size=1) +
      scale_fill_discrete(name="Transmision Type", labels=c("Automatic", "Manual")) +
      xlab("transmission") + ylab(var) + theme_bw()
  })    
 
})