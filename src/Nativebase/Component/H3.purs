module H3 where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (h3Class)
import RNX.PropTypes (Prop)
import TextNb


type H3Props eff =  TextNbPropsEx eff
  ( children :: String ) -- childrenType


h3 :: forall eff. Prop (H3Props eff) -> Array (ReactElement) -> ReactElement
h3 = createElement h3Class
