# This shiny app illustrates the results of a conjoint analysis insights
# 

library(shiny)

# Define UI for application that draws a histogram
ui <- navbarPage("Class action conjoint analysis",
               tabPanel("Compare alternatives", icon = icon("balance-scale"),
                        fluidRow(
                          column(wellPanel(tags$h3("Reference package"),
                                           sliderInput(inputId = "pkg1_price",
                                                       label = "Price",
                                                       step = 25,
                                                       min = 25,
                                                       max = 100,
                                                       value = 25),
                                           selectInput("pkg1_return_type", label = "Return type",
                                                       choices = c("Credit card",
                                                                   "Cheque",
                                                                   "Coupon",
                                                                   "Refund",
                                                                   "Additional product"),
                                                       selected = "Credit card"),
                                           checkboxInput("pkh1_by_push", 'Provided by "push"')
                                           ), width = 4),
                          column(wellPanel(tags$h3("Alternative package")
                                           
                                           ), width = 4)
                        )
                        ),
               navbarMenu("How this works?",
                          tabPanel("Conjoint analysis", icon = icon("chalkboard-teacher")),
                          tabPanel("GitHub repo", icon = icon("github"))),
               tabPanel("About", icon = icon("info"))
    )

# Define server logic required to draw a histogram
server <- function(input, output) {
    
}

# Run the application 
shinyApp(ui = ui, server = server)
