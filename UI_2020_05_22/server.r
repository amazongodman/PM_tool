#server.r
library(shiny)
library(plotly)

shinyServer(function(input, output) {

                                output$text1 <- renderText({
　　　　　　　　　　　　　　　　　　print(input$boxinput)
                                })

                                output$table1 <- renderTable({
                              　head(iris)
                                })

                                output$plot2 <- renderPlot({
                                   
par(mfrow=c(3,3))
 plot(cars)
  plot(cars)
   plot(cars)
    plot(cars)
     plot(cars)
      plot(cars)
       plot(cars)
        plot(cars)
         plot(cars)
                                })

x <- c(1:100)
random_y <- rnorm(100, mean = 0)
data <- data.frame(x, random_y)

                                output$plot3 <- renderPlotly(
fig <- plot_ly(data, x = ~x, y = ~random_y, type = 'scatter', mode = 'lines')
                                )

}#functionの定義の終わり
)#shinyserverの終わり