module Radio where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (radioClass)
import RNX.PropTypes (Prop)
import Touchable (TouchableOpacityPropsEx)

type RadioProps eff = TouchableOpacityPropsEx eff (selected :: Boolean)


radio :: forall eff. Prop (RadioProps eff) -> Array (ReactElement) -> ReactElement
radio = createElement radioClass
