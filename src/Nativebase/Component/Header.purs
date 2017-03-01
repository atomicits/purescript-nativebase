module Header where

import RNX.Styles
import Nativebase.ComponentClass (headerClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)


type HeaderProps eff ref = HeaderPropsEx eff ref ()

type HeaderPropsEx eff ref r = ViewNbPropsEx eff ref
  ( styleNb :: Style
  , searchBar :: Boolean
  , rounded :: Boolean
  , hasTabs :: Boolean
  |r
  )

type SearchBarProps = {rounded :: Boolean}


header :: forall eff ref. Prop (HeaderProps eff ref) -> Array (ReactElement) -> ReactElement
header = createElement headerClass

searchBar :: SearchBarProps  -> Array ReactElement -> ReactElement
searchBar p = header _ {searchBar = true, rounded = p.rounded}
