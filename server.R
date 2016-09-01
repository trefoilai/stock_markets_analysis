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
   
   ##
   messageData <- data.frame(
     from = c("Admininstrator", "New User", "Support"),
     message = c(
       "Sales are steady this month.",
       "How do I register?",
       "The new server is ready."
     ),
     stringsAsFactors = FALSE
   )
   output$messageMenu <- renderMenu({
     # Code to generate each of the messageItems here, in a list. messageData
     # is a data frame with two columns, 'from' and 'message'.
     # Also add on slider value to the message content, so that messages update.
       msgs <- apply(messageData, 1, function(row) {
         messageItem(from = row[["from"]], message = row[["message"]])
       })
     dropdownMenu(type = "messages", .list = msgs)
   })
}