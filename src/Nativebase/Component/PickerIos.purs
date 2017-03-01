module PickerIos where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (pickerClass)
import RNX.PropTypes (Prop)
import ViewNb


type PickerIosProps eff ref = ViewNbPropsEx eff ref ()


pickerNB :: forall eff ref. Prop (PickerIosProps eff ref) -> Array (ReactElement) -> ReactElement
pickerNB  = createElement pickerClass


---- need eo discuss
