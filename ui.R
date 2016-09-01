## app.R ##
library(shiny)
library(shinydashboard)


ui <- dashboardPage(skin = "red",
                    dashboardHeader(title = "Tweets Miner for Stock Markets",
                                    titleWidth = 320),
                    
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("Tweets", tabName = "tab1", icon = icon("bar-chart-o")),
                        menuItem("Data explorer", tabName = "tab2", icon = icon("th"))
                      )
                    ),
                    dashboardBody(
                      tabItems(
                        # First tab content
                        tabItem(tabName = "tab1",
                                fluidRow(
                                  
                                  box(
                                    title = "Inputs", status = "success", solidHeader = TRUE,width = 8,
                                    "Tweets Miner for Stock Markets",br(), "..........",collapsible = TRUE,br(),
                                    actionButton(inputId="act1",label = "Load new users' tweets"),
                                    actionButton(inputId="act2",label = "Load financial time series")
                                  )
                                )),
                        
                        # Second tab content
                        tabItem(tabName = "tab2",
                                fluidRow(
                                  box(
                                    title = "Loading users' tweets", status = "primary", solidHeader = TRUE,width = 6,
                                    collapsible = TRUE,
                                    verbatimTextOutput("act1")
                                  ),
                                  box(
                                    title = "Loading financial time series", status = "primary", solidHeader = TRUE,width = 6,
                                    collapsible = TRUE,
                                    column(dataTableOutput("act2"), width = 12)
                                  )
                                )
                        )
                      )
                    )
)





