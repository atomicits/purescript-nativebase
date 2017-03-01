module SwitchNB where

import React (ReactElement)

import Nativebase.ComponentClass (switchClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)
import Switch (SwitchPropsEx)


type SwitchNBProps eff = SwitchPropsEx eff ()


switchNB :: forall eff. Prop (SwitchNBProps eff) -> ReactElement -> ReactElement
switchNB = createElementOneChild switchClass
