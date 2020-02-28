#' Finds correlation matrix of all cols for inputted year.
#'
#' @param df A dataframe.
#' @param yr A year.
#' @return correlation matrix.
#' @examples
#' corr_matrix(nbastats, 1993)
#' @export

corr_matrix <- function(df, yr) {
  df1 = subset(df, Year==yr) %>%
  tidyverse::keep(is.numeric)
  cormat <- cor(df1);
  return(cormat)
}
