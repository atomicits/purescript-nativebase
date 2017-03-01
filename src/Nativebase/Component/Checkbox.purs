module Checkbox where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (checkBoxClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import Touchable (TouchableOpacityPropsEx)


type CheckboxProps eff = CheckboxPropsEx eff

type CheckboxPropsEx eff = TouchableOpacityPropsEx eff
  ( disabledNb :: Boolean
  , style      :: Style
  , checked    :: Boolean
  )


checkbox :: forall eff. Prop (CheckboxProps eff) -> Array (ReactElement) -> ReactElement
checkbox = createElement checkBoxClass
