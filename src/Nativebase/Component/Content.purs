module Content where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (contentClass)
import RNX.PropTypes (Prop, Theme)
import RNX.Styles (Style)
import ScrollView


type Shape =
  { x :: Number
  , y :: Number
  }

type KeyboardAwareScrollViewProps eff ref = KeyboardAwareScrollViewPropsEx eff ref ()

type KeyboardAwareScrollViewPropsEx eff ref r = ScrollViewPropsEx eff ref
   ( viewIsInsideTabBar  :: Boolean
   , resetScrollToCoords :: Shape
   |r
   )

type ContentProps eff ref = KeyboardAwareScrollViewPropsEx eff ref
  ( styleNb :: Style
  , disableKBDismissScroll :: Boolean
  , enableResetScrollToCoords :: Boolean
  , theme :: Theme
  )


content :: forall eff ref. Prop (ContentProps eff ref) -> Array (ReactElement) -> ReactElement
content = createElement contentClass
