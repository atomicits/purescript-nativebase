module Tab where

import Nativebase.ComponentClass (tabsClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type TabProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


tab :: forall  eff ref. Prop (TabProps eff ref) -> Array (ReactElement) -> ReactElement
tab = createElement tabsClass
