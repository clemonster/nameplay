
#' draws a graph of multiple names over time
#'
#' @param my_names list of names
#' @param the_sex Male or female, both by default
#'
#' @return a plot
#' @export
#' @import dplyr
#' @import ggplot2
#'
#' @examples
#' draw_names(c("Clément","Bertrand"),"M")
#'

draw_names <- function(my_names, the_sex = c("M","F")){
  names_count <- mydata %>%
    filter(name %in% my_names, sex %in% the_sex) %>%
    group_by(year,name) %>%
    summarise(count = sum(n))

  plot <- ggplot(data = names_count,
                 aes(x = year, y = count, colour = name)) +
    geom_line()
  return(plot)
}
