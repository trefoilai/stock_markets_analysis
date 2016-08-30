## app.R ##
library(shiny)
library(shinydashboard)


ui <- dashboardPage(skin = "red",
                    dashboardHeader(title = "Tweets Miner for Stock Markets",
                                    titleWidth = 320),
                    
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("Tweets", tabName = "dashboard", icon = icon("bar-chart-o"))
                      )
                    ),
                    dashboardBody(
                      tabItems(
                        # First tab content
                        tabItem(tabName = "dashboard",
                                fluidRow(
                                  box(
                                    title = "Inputs", status = "success", solidHeader = TRUE,width = 5,
                                    "Tweets Miner for Stock Markets",br(), "..........",collapsible = TRUE,br(),
                                    actionButton(inputId="act1",label = "Load new users' tweets"),
                                    actionButton(inputId="act2",label = "Load financial time series"),
                                    sliderInput("slider", "Slider input:", 1, 100, 50),
                                    textInput("text", "Text input:"),
                                    selectInput("kernel", "Choose a kernel:", 
                                                choices = c("gaussian", "epanechnikov", "uniform", "triangular", "triweight","tricube", "biweight", "cosine"))
                                    
                                  ),
                                  box(
                                    title = "Loading users' tweets", status = "primary", solidHeader = TRUE,width = 7,
                                    collapsible = TRUE,
                                    verbatimTextOutput("act1")
                                  ),
                                  box(
                                    title = "Summary", status = "primary", solidHeader = TRUE,width = 7,
                                    collapsible = TRUE,
                                    verbatimTextOutput("summary")
                                  )
                                )
                        
                        
                        # Second tab content
                        #tabItem(tabName = "widgets",
                        #        h2("Widgets tab content")
                        )
                      )
                    )
                    
)




