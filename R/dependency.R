#' Functions
#'
#' Attach \code{aframer} and \code{arframer} dependency, primitives and embed.
#'
#' @param ar And \code{arframer} scene.
#' @param cdn Wether to use local of CDN for source files.
#' @param ... Any \code{aframer} element or option.
#'
#' @examples
#' # use the primitive
#' ar_scene()
#'
#' # OR
#' library(aframer)
#'
#' a_scene(
#'   a_dependency(), # aframe dependency
#'   ar_dependency(), # arframer dependency
#'   arjs = NA
#' )
#'
#' @rdname arframer
#' @export
ar_dependency <- function(cdn = FALSE){
  .get_dependency(
    script = "aframe-ar.js",
    cdn = cdn
  )
}

#' @rdname arframer
#' @export
ar_scene <- function(..., cdn = FALSE){
  aframer::a_scene(
    aframer::a_dependency(cdn = cdn),
    ar_dependency(cdn = cdn),
    arjs = NA,
    ...
  )
}

#' @rdname arframer
#' @export
embed_arframer <- function(ar){
  ar[[1]] <- htmltools::tagAppendAttributes(ar[[1]], embedded = NA)
  return(ar)
}
