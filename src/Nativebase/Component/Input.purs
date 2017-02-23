module Input where

import TextInput (TextInputPropsEx)
import React (ReactElement)
import Nativebase.ComponentClass (inputClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)

type InputProps eff ref = InputPropsEx eff ref ()

type InputPropsEx eff ref r = TextInputPropsEx eff ref
  ( styleNb :: String |r)  -- React.PropTypes.object


input :: forall eff ref. Prop (InputProps eff ref) -> ReactElement -> ReactElement
input = createElementOneChild inputClass
