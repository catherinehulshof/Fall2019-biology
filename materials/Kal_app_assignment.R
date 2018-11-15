#Shiny App assignment

ui <- fluidPage(
  # Copy the line below to make a file upload manager
  fileInput("file", label = "File input"),

radioButtons("disp", "Display",
             choices = c(Head = "head",
                         All = "all"),
             selected = "head"),
tableOutput("contents")
)
server <- function(input,output){

# You can access the value of the widget with input$file, e.g.
output$contents <- renderTable({

  req(input$file)
  df <- read.csv(input$file$datapath,header=TRUE)
  
  if(input$disp == "head") {
    return(head(df))
  }
  else {
    return(df)
  }
})

}
}
shinyApp(ui=ui, server=server)

