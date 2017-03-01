module FooterTab where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (footerTabClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)

type FooterTabProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


footerTab :: forall  eff ref. Prop (FooterTabProps eff ref) -> Array (ReactElement) -> ReactElement
footerTab = createElement footerTabClass
