module IconNB where

import RNX.Styles (Style)
import React (ReactElement)
import Nativebase.ComponentClass (iconClass)
import RNX.PropTypes (Prop)
import RNX.Components (createElementOneChild)

type IconNBProps = { style :: Style}


iconNB :: Prop (IconNBProps) -> ReactElement -> ReactElement
iconNB = createElementOneChild iconClass
