module Checkbox where

import Nativebase.ComponentClass (checkBoxClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import Touchable (TouchableOpacityPropsEx)


type CheckboxProps eff = CheckboxPropsEx eff

type CheckboxPropsEx eff = TouchableOpacityPropsEx eff
  ( disabledNb :: Boolean
  , style      :: String   --  React.PropTypes.object
  )


checkbox :: forall eff. Prop (CheckboxProps eff) -> Array (ReactElement) -> ReactElement
checkbox = createElement checkBoxClass
