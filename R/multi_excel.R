#' imports all the sheets in an xlsx file as a list of data frames
#'
#' @param filepath the path to the file we want to load
#'
#' @return a list of dataframes containing the sheets
#' @export
#' @import assertthat
#' @importFrom readxl read_excel
#'
#' @examples
#' \dontrun{
#' multi_excel("/../../some/path")
#' }

multi_excel <- function(filepath){
  assertthat::has_extension(filepath,"xlsx")
  assertthat::is.dir(filepath)
  assertthat::is.readable(filepath)

  sheets <- readxl::excel_sheets(filepath)
  result <- lapply(sheets,FUN = readxl::read_excel,path=filepath)
  return(result)
}
