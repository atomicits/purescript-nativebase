module DeckSwiper where

import Nativebase.ComponentClass (deckSwiperClass)
import RNX.PropTypes (Prop, UnKnownType)
import RNX.Styles (Style)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type DeckSwiperProps eff ref a = ViewNbPropsEx eff ref
  ( styleNb      :: Style
  , dataSource   :: Array a
  , onSwipeLeft  :: UnKnownType
  , onSwipeRight :: UnKnownType
  , renderItem   :: String -- Takes a data entry from the data source and should return a renderable component to be rendered as the row.
  )


deckSwiper :: forall  eff ref a. Prop (DeckSwiperProps eff ref a) -> Array (ReactElement) -> ReactElement
deckSwiper = createElement deckSwiperClass
