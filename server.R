server <- function(input, output) {
  histdata <- rnorm(500)
  output$act1 <- renderPrint({
    getusrtweets()
  })
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    hist(data)
  })
  output$summary <- renderPrint({
    data <- histdata[seq_len(input$slider)]
    summary(data)
  })
}