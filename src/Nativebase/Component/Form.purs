module Form where

import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)

type FormProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)

--- need class
