library(shiny)

# Define UI for application that draws a histogram
ui <- fluidPage(
   
   # Application title
   titlePanel("Company News"),
   
      
      # Show a plot of the generated distribution
      mainPanel(
         
         dateInput('date', label = 'Date', value = Sys.Date()),
         textInput('ticker', label = 'Ticker'),
         textAreaInput('newsItem', 
                       label = 'News', 
                       width = '800px',
                       height = '300px'),
         actionButton('save', label = 'Save News Item')
      )
   )


# Define server logic required to draw a histogram
server <- function(input, output) {
   library(magrittr)
   source('./AddNewsItem.R')
   
   observeEvent(input$save,{
      AddNewsItem(input$ticker, input$newsItem, input$date)
   })
   

}

# Run the application 
shinyApp(ui = ui, server = server)

