module Label where

import RNX.Styles (Style)
import TextNb (TextNbPropsEx)


type LabelProps eff = TextNbPropsEx eff  (styleNb :: Style)

--- need lable class
