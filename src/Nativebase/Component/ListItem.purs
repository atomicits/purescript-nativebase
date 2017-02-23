module ListItem where

import Touchable (TouchableHighlightPropsEx)
import Nativebase.ComponentClass (listItemClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)

type ListItemProps eff =  ListItemPropsEx eff ()

type ListItemPropsEx eff r = TouchableHighlightPropsEx eff
  ( styleNb:: String
  , itemDivider :: Boolean
  , button :: Boolean
  |r
  )


listItem :: forall eff. Prop (ListItemProps eff) -> Array (ReactElement) -> ReactElement
listItem = createElement listItemClass
