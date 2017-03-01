module Badge where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (badgeClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import ViewNb (ViewNbPropsEx)


type BadgeProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


badge :: forall  eff ref. Prop (BadgeProps eff ref) -> Array (ReactElement) -> ReactElement
badge = createElement badgeClass
