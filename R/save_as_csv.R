#' saves a dataframe as csv
#'
#' @param df the data frame we want to save
#' @param path path to the csv file to be created
#' @param row.names row names
#' @param ... all other parameters for write.csv
#'
#' @return nothing
#' @export
#' @importFrom  utils write.csv2
#' @importFrom assertthat is.dir
#' @importFrom assertthat is.writeable
#' @importFrom assertthat has_extension
#' @importFrom assertthat not_empty
#'
#'
#' @examples
#' \dontrun{
#' my_df <- as.data.frame(c(1,24,3))
#' save_as_csv(my_df, "..\\..\\somefolder\\save_as_csv_test2.csv")
#' }
#'
save_as_csv <- function(df,path, row.names = FALSE, ...){
  is.data.frame(df)
  assertthat::is.dir(dirname(path))
  assertthat::is.writeable(dirname(path))
  assertthat::has_extension(path, "csv")
  assertthat::not_empty(df)


  write.csv2(x = df, file = path, row.names = row.names, ...)

  invisible(normalizePath(path))

}

