module PickerAndroid where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (pickerClass)
import Picker (PickerPropsEx)
import RNX.PropTypes (Prop)


type PickerAndroidProps a eff ref = PickerPropsEx a eff ref ()


pickerNB :: forall a eff ref. Prop (PickerAndroidProps a eff ref) -> Array (ReactElement) -> ReactElement
pickerNB  = createElement pickerClass
