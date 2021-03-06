% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shinywrappers.R
\name{renderUI}
\alias{renderUI}
\title{UI Output}
\usage{
renderUI(expr, env = parent.frame(), quoted = FALSE,
  outputArgs = list())
}
\arguments{
\item{expr}{An expression that returns a Shiny tag object, \code{\link{HTML}},
or a list of such objects.}

\item{env}{The environment in which to evaluate \code{expr}.}

\item{quoted}{Is \code{expr} a quoted expression (with \code{quote()})? This
is useful if you want to save an expression in a variable.}

\item{outputArgs}{A list of arguments to be passed through to the implicit
call to \code{\link{uiOutput}} when \code{renderUI} is used in an
interactive R Markdown document.}
}
\description{
Renders reactive HTML using the Shiny UI library.
}
\details{
The corresponding HTML output tag should be \code{div} and have the CSS class
name \code{shiny-html-output} (or use \code{\link{uiOutput}}).
}
\examples{
## Only run examples in interactive R sessions
if (interactive()) {

ui <- fluidPage(
  uiOutput("moreControls")
)

server <- function(input, output) {
  output$moreControls <- renderUI({
    tagList(
      sliderInput("n", "N", 1, 1000, 500),
      textInput("label", "Label")
    )
  })
}
shinyApp(ui, server)
}

}
\seealso{
\code{\link{uiOutput}}
}
