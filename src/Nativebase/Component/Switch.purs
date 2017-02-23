module Switch where

import RNX.Components (createElementOneChild)
import Events (EventHandler)
import Nativebase.ComponentClass (switchClasses)
import RNX.Color (Color)
import RNX.PropTypes (Prop)
import React (ReactElement)

type SwitchProps eff =  SwitchPropsEx eff ()

type SwitchPropsEx eff r =
  { onValueChange :: EventHandler eff Boolean
  , value :: Boolean
  , disabled :: Boolean
  , testID :: String
  , onTintColor :: Color
  , thumbTintColor :: Color
  , tintColor :: Color
  |r
  }


switch :: forall eff. Prop (SwitchProps eff) -> ReactElement ->  ReactElement
switch = createElementOneChild switchClasses
