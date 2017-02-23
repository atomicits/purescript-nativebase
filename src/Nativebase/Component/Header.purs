module Header where

import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (headerClass)
import ViewNb (ViewNbPropsEx)


type HeaderProps eff ref = HeaderPropsEx eff ref ()

type HeaderPropsEx eff ref r = ViewNbPropsEx eff ref
  ( styleNb :: String   --- React.PropTypes.object,
  , searchBar :: Boolean
  , rounded :: Boolean
  |r
  )


header :: forall eff ref. Prop (HeaderProps eff ref) -> Array (ReactElement) -> ReactElement
header = createElement headerClass
