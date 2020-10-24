library(shiny)
shinyServer(function(input, output) {

    output$plot1 <- renderPlot({

        # generate bins based on input$bins from ui.R
        cc <- input$cylin
        newmt <- mtcars[mtcars$cyl == cc, c(1,4)]
        fit1 <- lm(mpg ~ hp, data = newmt)
        hp <- seq(0, max(newmt$hp)+50)
        x <- data.frame(hp)
        y <- predict(fit1, x)
        plot(newmt$hp, newmt$mpg, col = "black", xlab = 'Horse Power', ylab = "MPG")
        lines(x$hp,y, col = 'red')

    })

})
