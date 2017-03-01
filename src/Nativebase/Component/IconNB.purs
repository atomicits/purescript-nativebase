module IconNB where

import React (ReactElement)

import Nativebase.ComponentClass (iconClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)


type IconNBProps =
  { style :: Style
  , name :: String
  , active :: Boolean
  }


iconNB :: Prop (IconNBProps) -> ReactElement -> ReactElement
iconNB = createElementOneChild iconClass
