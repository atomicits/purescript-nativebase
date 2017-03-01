module Card where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (cardClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import ViewNb (ViewNbPropsEx)

type RenderRow = forall a. a -> StringOrNumber -> StringOrNumber -> ReactElement

data StringOrNumber = String | Number

type CardProps eff ref a = ViewNbPropsEx eff ref
  ( styleNb   :: Style
  , dataArray :: Array a
  , renderRow :: RenderRow
  )


card :: forall  eff ref a. Prop (CardProps eff ref a) -> Array (ReactElement) -> ReactElement
card = createElement cardClass
