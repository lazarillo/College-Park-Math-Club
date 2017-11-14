
pacs_to_load <- c("shiny", "ggplot2", "dplyr")
lapply(pacs_to_load, require, character.only = TRUE)

# Define UI for random distribution app ----
ui <- fluidPage(

  # App title ----
  titlePanel("Uniform Distribution (Like Rolling a Die or Flipping a Coin)"),

  # Sidebar layout with input and output definitions ----
  sidebarLayout(

    # Sidebar panel for inputs ----
    sidebarPanel(

      # Input: Slider for the number of observations to generate ----
      selectInput("n_samples",
                  label = "Number of Tries (number of times you roll the die or flip the coin):",
                  choices = c(1:5, 10, 20, 50, 1e2, 1e3, 1e4, 1e5),
                  selected = 10),
      br(),

      # Input: Slider for the number of observations to generate ----
      selectInput("n_options",
                  label = "Possible Values (coin flip, 6-sided die, 20-sided die, etc.):",
                  choices = c(2, 4, 6, 8, 10, 12, 20, 100),
                  selected = 6)
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
    bind_cols("value"=sample(x=as.integer(input$n_options),
                            size=as.integer(input$n_samples),
                            replace=TRUE))
  })

  breaks <- reactive({
    max_val <- input$n_options
    if (max_val < 10) {
      c(1:max_val)
    } else {
      round(quantile(1:max_val, seq(0, 1, length.out = 10), names = FALSE))
    }
  })

  # Generate a plot of the data ----
  # Also uses the inputs to build the plot label. Note that the
  # dependencies on the inputs and the data reactive expression are
  # both tracked, and all expressions are called in the sequence
  # implied by the dependency graph.
  output$plot <- renderPlot({
    ggplot(dataset(), aes(x=value)) +
      geom_histogram(aes(y=..density.., fill=..count..), binwidth = 1,
                     color="white", origin = -0.5) +
      scale_x_continuous(breaks = breaks(), limits = c(0, max(breaks()) + 1)) +
      labs(y = "Measured %\n(e.g., 0.2 means 20% of rolls)", x = "Value of Die Roll") +
      theme(text = element_text(size=20))
  })

  # Generate a summary of the data ----
  output$summary <- renderPrint({
    dataset() %>% group_by(value) %>% summarise(count = n()) %>%
      print.data.frame(row.names = FALSE)
  })
}

# Create Shiny app ----
shinyApp(ui, server)
