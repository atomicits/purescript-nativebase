module DeckSwiper where

import Nativebase.ComponentClass (deckSwiperClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type DeckSwiperProps eff ref = ViewNbPropsEx eff ref
  ( styleNb    :: String        -- React.PropTypes.object,
  , dataSource :: Array String  --- React.PropTypes.array,
  )


deckSwiper :: forall  eff ref. Prop (DeckSwiperProps eff ref) -> Array (ReactElement) -> ReactElement
deckSwiper = createElement deckSwiperClass
