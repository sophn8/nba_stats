#' Finds max points and player provided inputted year.
#'
#' @param df A dataframe.
#' @param yr A year.
#' @return top player and max points.
#' @examples
#' max_points(nbastats, 1993)
#' @export

max_points <- function(df, yr) {
  df1 = subset(df, Year == yr)
  points_max = max(df1$PTS, na.rm = T)
  player = subset(df1, PTS == points_max)$Player;
  return(c(player, points_max))
}
