module Input where

import React (ReactElement)

import Nativebase.ComponentClass (inputClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import TextInput (TextInputPropsEx)


type InputProps eff ref = InputPropsEx eff ref ()

type InputPropsEx eff ref r = TextInputPropsEx eff ref
  ( styleNb :: Style
  , label :: String
  , inlineLabel :: Boolean
  ,  stackedLabel :: Boolean
  |r
  )


input :: forall eff ref. Prop (InputProps eff ref) -> ReactElement -> ReactElement
input = createElementOneChild inputClass
