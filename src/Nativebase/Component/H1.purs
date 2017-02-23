module H1 where

import TextNb
import Nativebase.ComponentClass (h1Class)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)

type H1Props eff =  TextNbPropsEx eff
  ( children :: String -- childrenType
  )

h1 :: forall eff. Prop (H1Props eff) -> Array (ReactElement) -> ReactElement
h1 = createElement h1Class
