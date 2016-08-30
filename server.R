server <- function(input, output) {
  set.seed(122)
  histdata <- rnorm(500)
  output$act1 <- renderPrint({
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