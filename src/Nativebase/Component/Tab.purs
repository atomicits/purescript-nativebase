module Tab where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (tabsClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)

import ViewNb (ViewNbPropsEx)


type TabProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


tab :: forall  eff ref. Prop (TabProps eff ref) -> Array (ReactElement) -> ReactElement
tab = createElement tabsClass
