module Body where

import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (badgeClass)
import ViewNb (ViewNbPropsEx)


type BodyProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


body :: forall  eff ref. Prop (BodyProps eff ref) -> Array (ReactElement) -> ReactElement
body = createElement badgeClass
