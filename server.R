server <- function(input, output) {

  ##
  v1 <- reactiveValues(data1 = "")
  observeEvent(input$act1, {
    v1$data1 <- getusrtweets()
  })
  output$act1 <- renderPrint({
    v1$data1
  })
  #output$act1 <- renderPrint({
   # getusrtweets()
  #})
  
  ##
  v2 <- reactiveValues(data2 = NULL)
  observeEvent(input$act2, {
    invisible(getfts())
    v2$data2 <- read.table("loaded_feeds/fin_time_series.txt",header=TRUE)
  })
   output$act2 <- renderDataTable({
    v2$data2
   })
}