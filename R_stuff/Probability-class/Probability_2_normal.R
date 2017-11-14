
pacs_to_load <- c("shiny", "ggplot2", "dplyr")
lapply(pacs_to_load, require, character.only = TRUE)

# Define UI for random distribution app ----
ui <- fluidPage(

  # App title ----
  titlePanel("Temperature in San Mateo (Example Normal Distribution)"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input: Slider for the number of observations to generate ----
      selectInput("n_days", label = "Number of Samples (number of different times we guess the temperature):",
                  choices = c(1:5, 10, 20, 50, 1e2, 1e3, 1e4, 1e5),
                  selected = 10)
    ),


    # Main panel for displaying outputs ----
    mainPanel(

      # Output: Tabset w/ plot, summary, and table ----
      tabsetPanel(type = "tabs",
                  tabPanel("Plot", plotOutput("plot")),
                  tabPanel("Summary", verbatimTextOutput("summary"))
      )
    )
  )
)

# Define server logic for random distribution app ----
server <- function(input, output) {

  # Reactive expression to generate the requested distribution ----
  # This is called whenever the inputs change. The output functions
  # defined below then use the value computed from this expression
  dataset <- reactive({
    bind_cols("Temperature"=rnorm(as.numeric(input$n_days), 70, 6))
  })

  breaks <- seq(50, 90, length.out = 11)

  # Generate a plot of the data ----
  # Also uses the inputs to build the plot label. Note that the
  # dependencies on the inputs and the data reactive expression are
  # both tracked, and all expressions are called in the sequence
  # implied by the dependency graph.
  output$plot <- renderPlot({
    ggplot(dataset(), aes(x=Temperature)) +
      geom_histogram(aes(y=..density.., fill=..count..), binwidth = 1,
                     color="white", origin = -0.5) +
      scale_x_continuous(breaks = breaks, limits = c(min(breaks), max(breaks))) +
      scale_fill_gradient(low="white", high="darkred") +
      labs(y = "Measured %\n(e.g., 0.2 means 20% of days)", x = "Temperature (deg F)") +
      theme(text = element_text(size=20))


  })

  # Generate a summary of the data ----
  output$summary <- renderPrint({
    summary(dataset())
  })

}

# Create Shiny app ----
shinyApp(ui, server)



