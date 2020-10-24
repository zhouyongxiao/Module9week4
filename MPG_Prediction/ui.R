library(shiny)
shinyUI(fluidPage(
    titlePanel("Predict Linear Model for MPG for Specific Cylinder"),
    sidebarLayout(
        sidebarPanel(
            h4('Please change the number of cylinders, the App calculates the linear regression model between the horse power and MPG data 
               from mtcars data set, the our put is the scatter plot of horsepower Vs. MPG, and the linear model is in red color'),
            numericInput("cylin",
                        "Number of cylinders:",
                        min = 4,
                        max = 8,
                        value = 4,
                        step = 2)
            
        ),
        mainPanel(
            plotOutput("plot1")
        )
    )
))
