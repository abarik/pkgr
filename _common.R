set.seed(1014)
if (knitr::is_html_output()) {
  my_width <- 70 # a input sorok hossza
} else {
  my_width <- 60
}

knitr::opts_chunk$set(
  comment = "#>",
  message = FALSE,
  warning = FALSE,
  collapse = TRUE,
  # cache = TRUE,
  # fig.retina = 2,
  fig.width = 6,
  fig.asp = 2/3,
  fig.show = "hold",
  tidy = TRUE,
  tidy.opts = list(width.cutoff = my_width),  
  width = my_width,
  out.cutoff = my_width-3
)

options(
  dplyr.print_min = 6,
  dplyr.print_max = 6,
  stringr.view_n = 10,
  # Activate crayon output - temporarily disabled for quarto
  # crayon.enabled = TRUE,
  pillar.bold = TRUE,
  width = my_width - 3, # - 3 for #> comment
  cli.width = my_width
)

# ggplot2::theme_set(ggplot2::theme_gray(12))

# own emoji insert
my_emoji <- function(e, n=1) {
  if (knitr::is_html_output()) {
    paste0(rep(emoji::emoji(e), n), collapse = "")
  } else {
      ''
  }
}


hook_output <- knitr::knit_hooks$get("output")
# set a new output hook to truncate text output
knitr::knit_hooks$set(output = function(x, options) {
  if (!is.null(n <- options$out.cutoff)) {
    x <- xfun::split_lines(x)
    if (length(x) > 0) {
      for (i in seq_along(x)) {
        if (nchar(x[i]) > options$out.cutoff) {
          x[i] <- paste0(substr(x = x[i], start = 1, stop = options$out.cutoff-3), "...")
        }
      }
    }
    x <- paste(x, collapse = "\n")
  }
  hook_output(x, options)
})





