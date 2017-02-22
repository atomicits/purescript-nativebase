module Picker where

import RNX.Styles (Style)
import Events (EventHandler)
import RNX.PropTypes (Prop)
import ViewNb (ViewNbPropsEx)
import React (ReactElement, createElement)
import Nativebase.ComponentClass


type PickerProps a eff ref = PickerPropsEx a eff ref ()

type PickerPropsEx a eff ref r = ViewNbPropsEx eff ref
  ( onValueChange :: EventHandler eff {itemValue :: a, itemPosition :: Int}
  , selectedValue :: a
  , enabled :: Boolean
  , mode :: PickerMode
  , prompt :: String
  , itemStyle :: Style
  |r
  )

newtype PickerMode = PickerMode String

pickerMode ::
  { dialog :: PickerMode
  , dropdown :: PickerMode
  }
pickerMode =
  { dialog: PickerMode "dialog"
  , dropdown: PickerMode "dropdown"
  }


picker :: forall a eff ref. Prop (PickerProps a eff ref) -> Array (ReactElement) -> ReactElement
picker = createElement pickerClasses
