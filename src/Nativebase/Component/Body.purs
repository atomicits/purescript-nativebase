module Body where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (badgeClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import ViewNb (ViewNbPropsEx)

type BodyProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


body :: forall  eff ref. Prop (BodyProps eff ref) -> Array (ReactElement) -> ReactElement
body = createElement badgeClass
