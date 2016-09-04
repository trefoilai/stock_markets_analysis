## app.R ##
library(shiny)
library(shinydashboard)


ui <- dashboardPage(skin = "blue",
                    dashboardHeader(title = "Tweets Miner for Stock Markets",
                                    titleWidth = 320,
                                    dropdownMenuOutput("messageMenu")),
                    
                    dashboardSidebar(
                      sidebarMenu(
                        menuItem("Input data", tabName = "tab1", icon = icon("file")),
                        menuItem("Data explorer", tabName = "tab2", icon = icon("table"))
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
                                    verbatimTextOutput("out1")
                                  ),
                                  box(
                                    title = "Loading financial time series", status = "primary", solidHeader = TRUE,width = 6,
                                    collapsible = TRUE,
                                    column(dataTableOutput("out2"), width = 12)
                                  )
                                )
                        )
                      )
                    )
)





