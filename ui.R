library(shiny)

shinyUI(fluidPage(
  titlePanel('pdf of f(n, ν, ω) distribution'),

  # Sidebar with a slider input for value of ν and ω
  sidebarLayout(
    sidebarPanel(
      sliderInput("df1",
                  "Degrees of freedom for numerator(ν):",
                  min = 1,
                  max = 200,
                  value = 10),
      sliderInput("df2",
                  "Degrees of freedom for denominator(ω):",
                  min = 1,
                  max = 200,
                  value = 10),
      sliderInput("n",
                  "number of draws(n):",
                  min = 50,
                  max = 100000,
                  value = 10000)
    ),

    # Plot of the generated distribution as output to server
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
