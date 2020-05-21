#server.r
library(shiny)

shinyServer(function(input, output) {

                                output$text1 <- renderText({
　　　　　　　　　　　　　　　　　　print(input$boxinput)
                                })

                                output$table1 <- renderTable({
                              　head(iris)
                                })

                                output$plot1 <- renderPlot({
                              　plot(iris)
                                })

                                output$plot2 <- renderPlot({
                                    plot(cars)
                                })

                                output$plot3 <- renderPlot({
                                    plot(cars)
                                })

}#functionの定義の終わり
)#shinyserverの終わり