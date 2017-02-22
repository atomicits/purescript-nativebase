module Radio where

import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (radioClass)
import Touchable (TouchableOpacityPropsEx)

type RadioProps eff = TouchableOpacityPropsEx eff (selected :: Boolean)


radio :: forall eff. Prop (RadioProps eff) -> Array (ReactElement) -> ReactElement
radio = createElement radioClass
