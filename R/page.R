#' Page template constructor
#'
#' @param pageTitle title of the page, default at "首頁". choices are "首頁","找人", "找事/物","經濟數據"
#' @param content a shiny.tag to be inserted into page content.
#'
#' @return
#' @export
#'
#' @examples \dontrun{}
pages <- function(pageTitle="首頁", content=NULL){
  require(htmltools)
  tagList(tag_page2(pageTitle, content), page_dependency(), maskBtn_dependency())
}
tag_page2 <-function(pageTitle="首頁", content=NULL){
    tags$div(class = "page",
      pageHeader(pageTitle),
      tags$div(class = "page-content",
        content),
      footer2(
        onType=pageTitle
      ))

}

# ui_page2() |> econWeb::browseTag2()
