#ui.r
library(shiny)

#define UI structure
shinyUI(navbarPage("表示するタイトル",

tabPanel("1ページ目のタイトル",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("boxinput", 
                          label = h3("ラベル"), 
                          choices = list("1", "2", "3"),
                          selected = "1"),

                checkboxGroupInput("boxinput2", 
                          label = h3("ラベル"), 
                          choices = list("1", "2", "3"),
                          selected = "1")
                
      ),  #sidebarPanelの終わり　カンマが必要
    mainPanel(
              textOutput("text1"),
              tableOutput("table1"), #テーブルを表示させたい。各項目にカンマ必要
              plotOutput("plot1"),
              plotOutput("plot2") #ページに表示させたいものがplotである。　最後なのでカンマ不要
            ) #mainpanelの終わりカンマ不要
  )#sidebarLayoutの終わり
),  #1タブページの終わり。2タブページ目を作りたいのでコンマが必要

tabPanel("2ページ目のタイトル",
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("boxinput3", 
                          label = h3("ラベル"), 
                          choices = list("1", "2", "3"),
                          selected = "1")  #最後のinput項目　カンマ不要
      ),  #sidebarPanelの終わり　カンマが必要
    mainPanel(
              plotOutput("plot3") #ページに表示させたいものがplotである。　最後なのでカンマ不要
            ) #mainpanelの終わりカンマ不要
  )#sidebarLayoutの終わり
)
#2タブページ目の終わり。　3ページ目は無いのでコンマ不要


)#タイトルからのひとまとまりの末端

)#ページ自体の末端