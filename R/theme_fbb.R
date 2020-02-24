## GGPLOT THEME
# Se necesita la fuente Circular Std
#
# Descargar la fuente en version regular:
# https://github.com/elartix/circular-std/blob/master/fonts/CircularStd-Book.ttfy
# y bold:
# https://github.com/elartix/circular-std/blob/master/fonts/CircularStd-Bold.ttf
#
# instalarlas
# y para registrarlas en R
# install.packages("extrafont")
# extrafont::font_import()
# extrafont::loadfonts()

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
