module Textarea where

import React (ReactElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (textareaClass)
import TextInput (TextInputPropsEx)
import RNX.Components (createElementOneChild)

type TextAreaProps eff ref =  TextInputPropsEx eff ref
  ( styleNb :: String -- React.PropTypes.object,
  , rowSpan :: Number
  , bordered :: Boolean
  , underline :: Boolean
  )


textArea :: forall eff ref. Prop (TextAreaProps eff ref) -> ReactElement -> ReactElement
textArea = createElementOneChild textareaClass
