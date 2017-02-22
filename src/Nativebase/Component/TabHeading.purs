module TabHeading where

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type TabHeadingProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


tabHeading :: forall  eff ref. Prop (TabHeadingProps eff ref) -> Array (ReactElement) -> ReactElement
tabHeading = createElement tabsClass
