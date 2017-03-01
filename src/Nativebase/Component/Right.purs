module Right where

import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)


type RightProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


---- need rightclass
