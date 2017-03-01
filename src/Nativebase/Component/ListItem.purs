module ListItem where

import React (ReactElement, createElement)

import Touchable (TouchableHighlightPropsEx)
import Nativebase.ComponentClass (listItemClass)
import RNX.PropTypes (Prop)


type ListItemProps eff =  ListItemPropsEx eff ()

type ListItemPropsEx eff r = TouchableHighlightPropsEx eff
  ( styleNb:: String
  , itemDivider :: Boolean
  , button :: Boolean
  , header :: Boolean
  , iconRight :: Boolean
  , iconLeft :: Boolean
  , icon :: Boolean
  , note :: String
  |r
  )


listItem :: forall eff. Prop (ListItemProps eff) -> Array (ReactElement) -> ReactElement
listItem = createElement listItemClass
