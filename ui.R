library(shiny)

shinyUI(fluidPage(
  titlePanel("Unit Conversion"),
  sidebarLayout(
    sidebarPanel(
      h4("Please insert numbers here"),
      textInput("inweight", "Weight (lb)", value = "100"),
      textInput("inheight", "Height (ft)", value = "6"),
      textInput("inlength", "Length (in)", value = "1"),
      textInput("intemperature", "Temperature (F)", value = "86"),
      textInput("involume", "Volume (gallon)", value = "1"),
      textInput("inspeed", "Speed (mph)", value = "50")
    ),
    mainPanel(
      h2("Converted Units"),
      h3("Weight (kg)"),
      textOutput("outweight"),
      h3("Height (cm)"),
      textOutput("outheight"),
      h3("Length (cm)"),
      textOutput("outlength"),
      h3("Temperature (C)"),
      textOutput("outtemperature"),
      h3("Volume (l)"),
      textOutput("outvolume"),
      h3("Speed (km/h)"),
      textOutput("outspeed")
    )
  )
))
