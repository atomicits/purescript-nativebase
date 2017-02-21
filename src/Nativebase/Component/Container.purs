module Container where


import Nativebase.ComponentClass (containerClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type ContainerProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,


container :: forall  eff ref. Prop (ContainerProps eff ref) -> Array (ReactElement) -> ReactElement
container = createElement containerClass
