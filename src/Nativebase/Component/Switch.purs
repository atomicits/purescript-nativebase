module Switch where

import React (ReactElement)

import Events (EventHandler)
import Nativebase.ComponentClass (switchClasses)
import RNX.Color (Color)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)


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
