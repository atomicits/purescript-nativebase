module H2 where

import React (ReactElement, createElement)

import TextNb
import Nativebase.ComponentClass (h2Class)
import RNX.PropTypes (Prop)


type H2Props eff =  TextNbPropsEx eff
  ( children :: String ) -- childrenType


h2 :: forall eff. Prop (H2Props eff) -> Array (ReactElement) -> ReactElement
h2 = createElement h2Class
