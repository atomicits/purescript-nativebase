module PickerAndroid where

import Picker (PickerPropsEx)
import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (pickerClass)


type PickerAndroidProps a eff ref = PickerPropsEx a eff ref ()


pickerNB :: forall a eff ref. Prop (PickerAndroidProps a eff ref) -> Array (ReactElement) -> ReactElement
pickerNB  = createElement pickerClass
