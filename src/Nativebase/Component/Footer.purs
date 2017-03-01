module Footer where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (footerClass)
import RNX.PropTypes (Prop)
import RNX.Styles
import ViewNb (ViewNbPropsEx)


type FooterProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


footer :: forall  eff ref. Prop (FooterProps eff ref) -> Array (ReactElement) -> ReactElement
footer = createElement footerClass
