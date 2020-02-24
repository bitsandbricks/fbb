######################
### FBB Colors ###
######################


fbb_colors <- c(
    `blue-main`   = "#00468B",
    `blue2`       = "#3868A9",
    `blue1`       = "#658DC4",
    `lightblue-main`   = "#00AAE7",
    `lightblue2`  = "#00AAE7",
    `lightblue1`  = "#00AAE7",
    `gray`        = "#777C82",
    `orange3`     = "#F26522",
    `orange2`     = "#F99D1C",
    `orange1`     = "#FFC20E",
    `pink3`       = "#F04E53",
    `pink2`       = "#F3716D",
    `pink1`       = "#F58E8B",
    `green3`      = "#62BB46",
    `green2`      = "#8AC75B",
    `green3`      = "#AED477",
    `purple3`     = "#8B6BAF",
    `purple2`     = "#A788BE",
    `purple1`     = "#C7A9D0",
    `lemongreen3` = "#A7AF39",
    `lemongreen2` = "#C9B92E",
    `lemongreen1` = "#E9C31E")

fbb_cols <- function(...) {
    cols <- c(...)

    if (is.null(cols))
        return (fbb_colors)

    fbb_colors[cols]
}


fbb_palettes <- list(
    `main`  = fbb_cols("blue-main", "lightblue-main", "gray"),

    `oranges`  = fbb_cols("orange1", "orange2", "orange3"),

    `pinks`  = fbb_cols("pink1", "pink2", "pink3"),

    `purples`  = fbb_cols("purple1", "purple2", "purple3"),

    `greens`  = fbb_cols("green3", "green2", "green1"),

    `lemongreens` = fbb_cols("lemongreen1", "lemongreen2", "lemongreen3"),

    `categorical` = fbb_cols("orange3", "pink3", "green3", "purple3", "blue-main")

)
