module Footer where

import Nativebase.ComponentClass (footerClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type FooterProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


footer :: forall  eff ref. Prop (FooterProps eff ref) -> Array (ReactElement) -> ReactElement
footer = createElement footerClass
