#' Finds max age of player provided inputted year.
#'
#' @param df A dataframe.
#' @param yr A year.
#' @return top player.
#' @examples
#' max_age(nbastats, 1993)
#' add(10, 1)
#' @export

max_age <- function(df, yr) {
  df1 = subset(df, Year==yr)
  age_max = max(df1$Age, na.rm = T)
  player = subset(df1, Age == age_max)$Player;
  return(player[1])
}
