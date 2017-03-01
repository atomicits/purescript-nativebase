module H1 where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (h1Class)
import RNX.PropTypes (Prop)
import TextNb


type H1Props eff =  TextNbPropsEx eff
  ( children :: String -- childrenType
  )

h1 :: forall eff. Prop (H1Props eff) -> Array (ReactElement) -> ReactElement
h1 = createElement h1Class



-- const childrenType = function (props, propName, component) {
--   let error;
--   return error;
-- };
