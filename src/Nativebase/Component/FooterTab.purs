module FooterTab where

import Nativebase.ComponentClass (footerTabClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type FooterTabProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


footerTab :: forall  eff ref. Prop (FooterTabProps eff ref) -> Array (ReactElement) -> ReactElement
footerTab = createElement footerTabClass
