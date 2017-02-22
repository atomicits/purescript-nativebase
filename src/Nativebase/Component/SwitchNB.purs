module SwitchNB where

import React (ReactElement)
import RNX.PropTypes (Prop)
import Switch (SwitchPropsEx)
import Nativebase.ComponentClass (switchClass)
import RNX.Components (createElementOneChild)


type SwitchNBProps eff = SwitchPropsEx eff ()


switchNB :: forall eff. Prop (SwitchNBProps eff) -> ReactElement -> ReactElement
switchNB = createElementOneChild switchClass
