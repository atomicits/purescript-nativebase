module Textarea where

import React (ReactElement)

import Nativebase.ComponentClass (textareaClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import TextInput (TextInputPropsEx)


type TextAreaProps eff ref =  TextInputPropsEx eff ref
  ( styleNb :: Style
  , rowSpan :: Number
  , bordered :: Boolean
  , underline :: Boolean
  )


textArea :: forall eff ref. Prop (TextAreaProps eff ref) -> ReactElement -> ReactElement
textArea = createElementOneChild textareaClass
