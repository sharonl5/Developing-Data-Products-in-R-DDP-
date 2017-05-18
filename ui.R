library(shiny)
shinyUI(fluidPage(
  titlePanel("Brownlee's Stack Loss Plant Data "),
  headerPanel(
    "Please choose and slide"),
  sidebarLayout(
    sidebarPanel(
      radioButtons("p", "Select column of iris dataset:",
                   list("Air.Flow"='a', "Water.Term"='b', "Acid.Conc."='c', "stack.loss"='d')),
      sliderInput("bins",
                  "Number of bins:",
                  min = 1,
                  max = 10,
                  value = 5)
    ),
    mainPanel(
      plotOutput("distPlot")
    )
  )
))
