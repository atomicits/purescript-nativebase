module Badge where


import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (badgeClass)
import ViewNb (ViewNbPropsEx)


type BadgeProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


badge :: forall  eff ref. Prop (BadgeProps eff ref) -> Array (ReactElement) -> ReactElement
badge = createElement badgeClass
