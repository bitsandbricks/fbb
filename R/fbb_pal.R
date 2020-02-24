#' FBB Color Palettes
#'
#' Creates a color palette based on FBB colors
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
fbb_pal <- function(palette = "main", reverse = FALSE, ...) {

    pal <- fbb_palettes[[palette]]

    if (reverse) pal <- rev(pal)

    colorRampPalette(pal, ...)
}

#scales::show_col(fbb_palettes[["main"]])
