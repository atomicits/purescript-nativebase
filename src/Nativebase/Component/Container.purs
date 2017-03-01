module Container where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (containerClass)
import RNX.PropTypes (Prop, Theme)
import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)


type ContainerProps eff ref = ViewNbPropsEx eff ref
  ( styleNb :: Style
  , theme :: Theme
  )


container :: forall  eff ref. Prop (ContainerProps eff ref) -> Array (ReactElement) -> ReactElement
container = createElement containerClass
