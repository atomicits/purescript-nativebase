module H3 where

import TextNb
import Nativebase.ComponentClass (h3Class)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)

type H3Props eff =  TextNbPropsEx eff
  ( children :: String -- childrenType
  )

h3 :: forall eff. Prop (H3Props eff) -> Array (ReactElement) -> ReactElement
h3 = createElement h3Class
