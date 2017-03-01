module InputGroup where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (inputGroupClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)


type InputGroupProps eff ref = ViewNbPropsEx eff ref
  ( styleNb :: Style
  , regular :: Boolean
  , underline :: Boolean
  , rounded :: Boolean
  , success :: Boolean
  , error :: Boolean
  , disabled :: Boolean
  , atoolbar :: Boolean
  , iconRight :: Boolean
  )


inputGroup :: forall  eff ref. Prop (InputGroupProps eff ref) -> Array (ReactElement) -> ReactElement
inputGroup = createElement inputGroupClass
