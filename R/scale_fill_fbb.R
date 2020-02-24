scale_fill_fbb <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
    pal <- fbb_pal(palette = palette, reverse = reverse)

    if (discrete) {
        discrete_scale("fill", paste0("fbb_", palette), palette = pal, ...)
    } else {
        scale_fill_gradientn(colours = pal(256), ...)
    }
}
