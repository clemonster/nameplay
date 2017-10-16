
#' this function outputs a plot of how much a name was given over time.
#'
#' @param the_name name we want to plot
#' @param the_sex specify male or female (optional, both by default)
#'
#' @return a plot
#' @export
#' @import prenoms
#' @import ggplot2
#' @import dplyr
#'
#'
#' @examples
#' draw_a_name("Jean","M")

draw_a_name <- function(the_name, the_sex = c("M","F")){

  name_count <- mydata %>%
    filter(name %in% the_name, sex %in% the_sex) %>%
    group_by(year,name) %>%
    summarise(count = sum(n))

  plot <- ggplot2::ggplot(data = name_count,
                          ggplot2::aes(x = year, y = count)) +
    ggplot2::geom_line()
  return(plot)
}
