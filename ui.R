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
                                    title = "Inputs", status = "success", solidHeader = TRUE,width = 4,
                                    "Box content here", br(), "More box content",collapsible = TRUE,
                                    sliderInput("slider", "Slider input:", 1, 100, 50),
                                    textInput("text", "Text input:"),
                                    selectInput("kernel", "Choose a kernel:", 
                                                choices = c("gaussian", "epanechnikov", "uniform", "triangular", "triweight","tricube", "biweight", "cosine"))
                                    
                                  ),
                                  box(
                                    title = "Histogram", status = "primary", solidHeader = TRUE,width = 8,
                                    collapsible = TRUE,
                                    plotOutput("plot1", height = 450)
                                  ),
                                  box(
                                    title = "Summary", status = "primary", solidHeader = TRUE,width = 8,
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




