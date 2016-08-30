server <- function(input, output) {
  histdata <- rnorm(500)
  output$act1 <- renderText({
    getusrtweets()
  })
  
  output$plot1 <- renderPlot({
    data <- histdata[seq_len(input$slider)]
    library(kedd)
    plot(dkde(data,kernel = input$kernel),main=input$text)
  })
  output$summary <- renderPrint({
    data <- histdata[seq_len(input$slider)]
    dkde(data,kernel = input$kernel)
  })
}