module TabHeading where

import React (ReactElement, createElement)

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import RNX.Styles (Style)

import ViewNb (ViewNbPropsEx)


type TabHeadingProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


tabHeading :: forall  eff ref. Prop (TabHeadingProps eff ref) -> Array (ReactElement) -> ReactElement
tabHeading = createElement tabsClass
