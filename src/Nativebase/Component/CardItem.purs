module CardItem where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (cardItemClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import Touchable (TouchableOpacityPropsEx)


type CardItemProps eff = TouchableOpacityPropsEx eff
  ( styleNb :: Style
  , header :: Boolean
  , cardBody :: Boolean
  , footer :: Boolean
  , button :: Boolean
  )


cardItem :: forall eff. Prop (CardItemProps eff) -> Array (ReactElement) -> ReactElement
cardItem = createElement cardItemClass
