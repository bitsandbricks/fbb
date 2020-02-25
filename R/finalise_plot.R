#' Adds the FBB logo to plots
#'
#' @param palette named color palette (see the list in fbb_palettes)
#' @param reverse (default FALSE) reverses the order of colors
#'
#' @return a ColorRampPalette function
#'
#' @examples
#' fbb_pal()
#'
#' @export
finalise_plot <- function(plot_name,
                          source_name,
                          logo_image_path = file.path(system.file("data", package = 'fbb'), "BB_logo_small.png")) {

    ### Bloque tomado del paquete bbplot, https://github.com/bbc/bbplot/blob/master/R/finalise_plot.R ###

    save_plot <- function (plot_grid, width, height, save_filepath) {
        grid::grid.draw(plot_grid)
        #save it
        ggplot2::ggsave(filename = save_filepath,
                        plot=plot_grid, width=(width/72), height=(height/72),  bg="white")
    }

    #Left align text
    left_align <- function(plot_name, pieces){
        grob <- ggplot2::ggplotGrob(plot_name)
        n <- length(pieces)
        grob$layout$l[grob$layout$name %in% pieces] <- 2
        return(grob)
    }

    create_footer <- function (source_name, logo_image_path) {
        #Make the footer
        footer <- grid::grobTree(grid::linesGrob(x = grid::unit(c(0, 1), "npc"), y = grid::unit(1.1, "npc")),
                                 ggpubr::text_grob(source_name,
                                                   x = 0.004, hjust = 0,
                                                   family = "CircularStd"),
                                 grid::rasterGrob(png::readPNG(logo_image_path), x = 0.944))
        return(footer)

    }


    footer <- create_footer(source_name, logo_image_path)

    #Draw your left-aligned grid
    plot_left_aligned <- left_align(plot_name, c("subtitle", "title", "caption"))
    plot_grid <- ggpubr::ggarrange(plot_left_aligned, footer,
                                   ncol = 1, nrow = 2,
                                   heights = c(1, 0.05))


    plot_grid
}
