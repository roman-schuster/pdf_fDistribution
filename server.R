library(shiny)

shinyServer(function(input, output) {
  output$distPlot <- renderPlot({

    # Generate ν, ω, n based on input$df1, df2, n from UI
    draws <- rf(input$n, df1 = input$df1, df2 = input$df2)
    
    # draw the histogram with the specified parameters
    hist(draws, probability = TRUE, col = 'ivory3', border = 'white', main = 'pdf of f(n, ν, ω) distribution', xlab = 'realization x of X~f(ν, ω)')
  
    #
    sequence <- seq(0, 1000, by = .01)
    points(sequence, df(sequence, df1 = input$df1, df2 = input$df2), type = 'l', col = 'indianred4')
  })
})
