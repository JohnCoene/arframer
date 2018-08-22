.get_dependency <- function(script, cdn){

  if(isTRUE(cdn))
    path <- c(href = paste0("https://jeromeetienne.github.io/AR.js/aframe/build/"))
  else
    path <- c(file = system.file("arframer", package = "arframer"))

  htmltools::htmlDependency(
    name = "arframer",
    version = "0.0.1",
    src = path,
    script = script
  )
}
