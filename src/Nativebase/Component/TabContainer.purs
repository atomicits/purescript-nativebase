module TabContainer where

import React (ReactElement, createElement)

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)


type TabContainerProps eff ref = ViewNbPropsEx eff ref (styleNb :: Style)


tabContainer :: forall  eff ref. Prop (TabContainerProps eff ref) -> Array (ReactElement) -> ReactElement
tabContainer = createElement tabsClass
