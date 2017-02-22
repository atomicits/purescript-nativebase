module CardItem where

import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (cardItemClass)
import Touchable (TouchableOpacityPropsEx)

type CardItemProps eff = TouchableOpacityPropsEx eff
  ( styleNb ::  String
  , header :: Boolean
  , cardBody :: Boolean
  , footer :: Boolean
  , button :: Boolean
  )

cardItem :: forall eff. Prop (CardItemProps eff) -> Array (ReactElement) -> ReactElement
cardItem = createElement cardItemClass
