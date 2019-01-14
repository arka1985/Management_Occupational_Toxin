library(DT)

ui <- fluidPage(
  titlePanel(h2("Medical Management Guidelines for Toxic Substances",style = "color:blue")),
  h4("Design and Development: Dr. Arkaprabha Sau, MBBS, MD(Gold Medalist), DPH ",style="color:darkmagenta"),
  h4("Reference: Agency for Toxic Substances and Disease Registry,CDC,Atlanta,USA",style="color:green"),
  br(),
  DT::dataTableOutput("mytable")
)

server <- function(input, output) {
  output$mytable = DT::renderDataTable({
    m
  },escape=FALSE)
}

shinyApp(ui, server)