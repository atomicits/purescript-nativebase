module TabContainer where

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type TabContainerProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


tabContainer :: forall  eff ref. Prop (TabContainerProps eff ref) -> Array (ReactElement) -> ReactElement
tabContainer = createElement tabsClass
