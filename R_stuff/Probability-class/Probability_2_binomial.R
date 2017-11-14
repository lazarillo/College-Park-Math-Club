
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
      sliderInput("success", label = "Probability of (event) Success:",
                  min = 0, max = 1, value = 0.2, step = 0.02),

      selectInput("n_events", label = "Number of Events (per trial):",
                  choices = c(1:5, 10, 20, 30, 40, 50, 75, 100),
                  selected = 20),

      selectInput("n_trials", label = "Total Number of (repeated) Trials:",
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
    bind_cols("Successes"=rbinom(as.numeric(input$n_trials),
                                 as.numeric(input$n_events),
                                 as.numeric(input$success)))
  })

  # breaks <- reactive({
  #   max_val <- input$n_options
  #   if (max_val < 10) {
  #     c(1:max_val)
  #   } else {
  #     round(quantile(1:max_val, seq(0, 1, length.out = 10), names = FALSE))
  #   }
  # })
  breaks <- seq(0, 90, length.out = 11)

  # Generate a plot of the data ----
  # Also uses the inputs to build the plot label. Note that the
  # dependencies on the inputs and the data reactive expression are
  # both tracked, and all expressions are called in the sequence
  # implied by the dependency graph.
  output$plot <- renderPlot({
    ggplot(dataset(), aes(x=Successes)) +
      geom_histogram(aes(y= ..density.., fill = ..count..),
                     color = "darkgreen") +
      labs(title = paste0("Number of Successes, given:\n",
                          input$n_trials, " trials, ",
                          input$n_events, " events per trial, and ",
                          input$success, "% chance per event"),
           y = "Measured Probability", x = "Number of Successes") +
      scale_fill_gradient(low="white", high="green") +
      theme(text = element_text(size = 21))
  })


  # Generate a summary of the data ----
  output$summary <- renderPrint({
    summary(dataset())
  })

}

# Create Shiny app ----
shinyApp(ui, server)



