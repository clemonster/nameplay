
#' import multiple csv files
#'
#' @param folder_path path to a folder from current directory
#'
#' @return path
#' @export
#' @importFrom utils read.csv
#'
#'
#' @examples
#' \dontrun{
#' my_csv_reader("../../folder/path")
#' }
#'
my_csv_reader <- function(folder_path) {
  #check the folder path is valid
  assertthat::is.dir(folder_path)

  #open all csvs in the folder
  csv_list <- list.files(path = folder_path, pattern = ".*csv$", full.names = TRUE )
  result <- lapply(csv_list, FUN = read.csv)#data.table::fread
  return(result)
}
