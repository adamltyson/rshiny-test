library(DT)

ui <- basicPage(
  img(
    src = "brainglobe.png",
    width = "70px", height = "70px"
  ),
  h2("Allen Adult Mouse Brain Structures"),

  DT::dataTableOutput("mytable")
)

server <- function(input, output) {
  data1 <- read.csv("structures.csv", header=TRUE, stringsAsFactors=FALSE)
  output$mytable = DT::renderDataTable({
    data1
  })
}

shinyApp(ui, server)