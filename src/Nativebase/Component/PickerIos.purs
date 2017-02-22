module PickerIos where

import ViewNb
import Nativebase.ComponentClass (pickerClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)

type PickerIosProps eff ref = ViewNbPropsEx eff ref ()


pickerNB :: forall eff ref. Prop (PickerIosProps eff ref) -> Array (ReactElement) -> ReactElement
pickerNB  = createElement pickerClass


---- need eo discuss
