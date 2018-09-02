# arframer

[AR.js](https://github.com/jeromeetienne/AR.js) for [aframer](https://aframer.john-coene.com/).

## Installation

``` r
# install.packages("devtools")
devtools::install_github("JohnCoene/arframer")
```

## Example

``` r
library(aframer)
library(arframer)

browse_aframe(
  ar_scene(
    a_box(
      position = "0 0.5 0",
      material = "opacity: 0.5;"
    ),
    a_primitive(
      "marker-camera",
      list(
        preset = "hiro"
      )
    )
  )
)
```

