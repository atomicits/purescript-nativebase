module Left where

import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)

type LeftProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


--- need leftClass
