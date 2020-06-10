#' FBB theme
#'
#' Creates an FBB theme.
#'     Requires fonts Circular Std regular (# https://github.com/elartix/circular-std/blob/master/fonts/CircularStd-Book.ttfy)
#'     and bold (https://github.com/elartix/circular-std/blob/master/fonts/CircularStd-Bold.ttf .
#'     After instlling the fonts, register them in R:
#'     # install.packages("extrafont")
#'     # extrafont::font_import()
#'     # extrafont::loadfonts()
#'
#' @return a ggplot2 theme
#'
#' @examples
#' theme_fbb()
#'
#' @export
theme_fbb <- function(base_size = 14,
                      base_family = "CircularStd",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170){
    ggplot2::theme_minimal(base_size = base_size,
                           base_family = base_family,
                           base_line_size = base_line_size) %+replace%
        theme(
            plot.title = element_text(
                color = rgb(25, 43, 65, maxColorValue = 255),
                size = rel(1.15),
                face = "bold",
                hjust = 0,
                vjust = 2),
            axis.title = element_text(
                color = rgb(105, 105, 105, maxColorValue = 255),
                size = rel(0.75)),
            axis.text = element_text(
                color = rgb(105, 105, 105, maxColorValue = 255),
                size = rel(0.5)),
            panel.grid.major = element_line(
                rgb(105, 105, 105, maxColorValue = 255),
                linetype = "dotted"),
            panel.grid.minor = element_line(
                rgb(105, 105, 105, maxColorValue = 255),
                linetype = "dotted",
                size = rel(4)),

            complete = TRUE
        )
}


#' @export
theme_fbb_map <- function(base_size = 14,
                      base_family = "CircularStd",
                      base_line_size = base_size / 170,
                      base_rect_size = base_size / 170) {
  theme_fbb(base_size, base_family, base_line_size, base_rect_size) %+replace% 
        theme(axis.line = element_blank(), axis.text = element_blank(), 
            axis.ticks = element_blank(), axis.title = element_blank(), 
            panel.background = element_blank(), panel.border = element_blank(), 
            panel.grid = element_blank(), panel.spacing = unit(0, 
                "lines"), plot.background = element_blank(), 
            legend.justification = c(0, 0), legend.position = c(0, 
                0))
  }
