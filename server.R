library(shiny)

shinyServer(function(input, output) {
  
  wtconv <- reactive({
    wtInput <- as.numeric(input$inweight)
    wtInput
  })
  htconv <- reactive({
    wtInput <- as.numeric(input$inheight)
    wtInput
  })
  lgconv <- reactive({
    lgInput <- as.numeric(input$inlength)
    lgInput
  })
  tempconv <- reactive({
    tempInput <- as.numeric(input$intemperature)
    tempInput
  })
  volconv <- reactive({
    volInput <- as.numeric(input$involume)
    volInput
  })
  spdconv <- reactive({
    spdInput <- as.numeric(input$inspeed)
    spdInput
  })
  
  output$outweight <- renderText({
    wtconv()/2.205
  })
  output$outheight <- renderText({
    htconv()*30.48
  })
  output$outlength <- renderText({
    lgconv()*2.54
  })
  output$outvolume <- renderText({
    volconv()*3.785
  })
  output$outtemperature <- renderText({
    (tempconv()-32)/9*5
  })
  output$outspeed <- renderText({
    spdconv()*1.609
  })
})

