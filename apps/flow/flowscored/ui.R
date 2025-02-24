
fluidPage(
  tags$head(
    tags$link(rel = "stylesheet", type = "text/css", href = "shiny.css"),
    tags$script(src = "rudderstack.js"),
    tags$link(rel = "icon", href = "flipside.svg")
    # tags$link(rel = "stylesheet", href = "https://fonts.googleapis.com/css?family=Roboto+Mono"),
    # tags$link(rel = "stylesheet", href = "https://fonts.googleapis.com/css?family=Epilogue:wght@400;500;600;700;900&display=swap")
  ),
  br(),
  fluidRow(class = "titlerow", 
           column(9, class = "title", img(src = "flowscored_logo.svg", width = '360px')),
           column(3,
                  div(id = "icons",
                      div(class = "aboutlinks", 
                          a(id = 'fork', 
                            href = "https://github.com/FlipsideCrypto/user_metrics/tree/main/apps/flow/flowscored",
                            img(src = "github.svg", width = "30px"),
                            onclick = "rudderanalytics.track('flowscored-click-github')",
                            target = "_blank")),
                      bsTooltip(id = "fork", 
                                title = "Fork this App",
                                placement = "bottom", trigger = "hover"),
                      div(class = "aboutlinks", 
                          a(id = "flippy",
                            href = "https://next.flipsidecrypto.xyz/",
                            img(src = "flipside.svg", width = "30px"),
                            onclick = "rudderanalytics.track('flowscored-click-flipside')",
                            target = "_blank")),
                      bsTooltip(id = "flippy", 
                                title = "Get the Data",
                                placement = "bottom", trigger = "hover")
                  )
                  #actionButton(inputId = "randomaddy", label = img(src = "random.svg", height = "26"))
                  # div(class = "aboutlinks", 
                  #     a(id = "solana", href = "https://solana.com",
                  #       img(src = "solana.svg", width = "30px"),
                  #       target = "_blank")),
                  # bsTooltip(id = "solana", 
                  #           title = "Solana",
                  #           placement = "bottom", trigger = "hover")
                  
           )),
  br(),
  
  
  # fluidRow(id = "waltitle", column(6, "Connect Your Dapper Wallet"), column(6, "Connect Your Non-Dapper Wallet")),
  # bsTooltip(id = "waltitle", title = "Increase your score by connecting two wallets!", placement = "top", trigger = "hover"),
  # 
  # fluidRow(column(1, img(src = "dapper.png", width = "30px")),
  #          column(5, uiOutput("dapperaddyO")),
  #          column(1, img(src = "wallet.svg", width = "30px")),
  #          column(5, uiOutput("bloctoaddyO"))
  # ),
  
  fluidRow(id = "vertcenter",
           div(class = "title", id = "connecttext", 
               "Connect your wallet to get a score - connect all of your wallets for a higher score!"),
           div(id = "right-arrow", img(src = "caret-right-solid.svg", height = "45px")),
           dynamic_buttonInput("my_wallet")
  ),
  
  
  fluidRow(class = "scorerow",
           column(12, class = "scoreholder",
                  img(src = 'shape_backgrounds-01.svg', width = "100%"),
                  div(class = "centeredtop", 
                      div(class = "sections",
                          div(class = "leftsection", 
                              icon("caret-down"),
                              br(),
                              uiOutput("leftlink"),
                              icon("caret-up")
                          ),
                          div(class = "centersection", 
                              "your score",
                              textOutput("totalscore"),
                              "out of 12"
                          ),
                          div(class = "rightsection", 
                              icon("caret-down"),
                              br(),
                              uiOutput("rightlink"),
                              icon("caret-up")
                          )
                      )
                  )
                  
                  
           ),
  ),
  br(),
  
  fluidRow(class = "title", "Dapper Points - up to 3 each thing (last 90 days)"),
  
  fluidRow(class = "scorerow",
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-03.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Ripper"),
                      div(class = "score", textOutput("dapper1")),
                      div(class = "scoresubtitle", textOutput("dapper1text"))
                  )),
           
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-04.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Lister"),
                      div(class = "score", textOutput("dapper2")),
                      div(class = "scoresubtitle", textOutput("dapper2text"))
                  )),
           
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-05.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Buyer"),
                      div(class = "score", textOutput("dapper3")),
                      div(class = "scoresubtitle", textOutput("dapper3text"))
                  ))
  ),
  
  br(),
  
  fluidRow(class = "title", "Bonus Points - up to 3 total (last 90 days)"),
  
  fluidRow(class = "scorerow",
           
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-02.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Staker"),
                      div(class = "score", textOutput("bonus2")),
                      div(class = "scoresubtitle", textOutput("bonus2text"))
                  )),
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-07.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Trader"),
                      div(class = "score", textOutput("bonus1")),
                      div(class = "scoresubtitle", textOutput("bonus1text"))
                  )),
           
           column(4, class = "scoreholder",
                  img(src = 'shape_backgrounds-06.svg', width = "100%"),
                  div(class = "centered",
                      div(class = "scoretitle", "Swapper"),
                      div(class = "score", textOutput("bonus3")),
                      div(class = "scoresubtitle", textOutput("bonus3text"))
                  ))
  )
  
  
) # close fluid page

