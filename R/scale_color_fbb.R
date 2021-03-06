#' FBB color palette
#'
#' @export
scale_color_fbb <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
    pal <- fbb_pal(palette = palette, reverse = reverse)

    if (discrete) {
        discrete_scale("colour", paste0("fbb_", palette), palette = pal, ...)
    } else {
        scale_color_gradientn(colours = pal(256), ...)
    }
}
