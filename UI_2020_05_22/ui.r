#ui.r
library(shiny)
library(plotly)
require("devtools")
require("dplyr")

# 目的のパッケージをインストール
#devtools::install_github('andrewsali/shinycssloaders')
#library(shinycssloaders)



#define UI structure
shinyUI(navbarPage("表示するタイトル",theme = "Solar.css",

#headerPanel("New Application"),

tabPanel("1ページ目のタイトル",

#tags$head(tags$link(rel = "stylesheet", type = "text/css", href = "mystyles.css")),

  sidebarLayout(
    sidebarPanel(

      submitButton("Submit"),
      br(),
      br(),


      numericInput("num", 
                    h3("Numeric input"), 
                    value = 1),

      textInput("text", h3("Text input"), 
                  value = "Enter text"),

      radioButtons("radio", h3("Radio buttons"),
                    choices = list("Choice 1" = 1, "Choice 2" = 2,
                    "Choice 3" = 3),selected = 1),

      dateRangeInput("dates", h3("Date range"),start = "2018-01-01", end = "2019-01-01"),

      dateInput("date", 
                  h3("Date input"), 
                  value = "2014-01-01"),

      checkboxGroupInput("boxinput", 
                          label = h3("ラベル"), 
                          choices = list("1", "2", "3"),
                          selected = "1")

      ),  #sidebarPanelの終わり　カンマが必要
    mainPanel(
              textOutput("text1"),
              tableOutput("table1"), #テーブルを表示させたい。各項目にカンマ必要

              plotOutput("plot2") #ページに表示させたいものがplotである。　最後なのでカンマ不要
            ) #mainpanelの終わりカンマ不要
  )#sidebarLayoutの終わり
)


,  #1タブページの終わり。2タブページ目を作りたいのでコンマが必要

tabPanel("2ページ目のタイトル",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("boxinput3", 
                          label = h3("ラベル"), 
                          choices = list("1", "2", "3"),
                          selected = "1")  #最後のinput項目　カンマ不要
      ),  #sidebarPanelの終わり　カンマが必要
    mainPanel(
              plotlyOutput("plot3")#ページに表示させたいものがplotである。　最後なのでカンマ不要
            ) #mainpanelの終わりカンマ不要
  )#sidebarLayoutの終わり
)
#2タブページ目の終わり。　3ページ目は無いのでコンマ不要

)#タイトルからのひとまとまりの末端
)#ページ自体の末端



