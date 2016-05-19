#' Mode function for R
#'
#' @param x - Input vector
#'
#' @return - Returns the Mode of the inputter vector
#'
#' @examples
#' x = c(1,1,1,2,2,3,3,3,3,3,4,5,6,7,8,9)
#' Mode(x) # [1] 3
#'
Mode <- function(x) {
  ux = unique(x)
  ux[which.max(tabulate(match(x, ux)))]
}
