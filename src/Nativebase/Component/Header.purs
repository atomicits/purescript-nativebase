module Header where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (headerClass)
import RNX.PropTypes (Prop)
import RNX.Styles
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

-- searchBar :: Prop SearchBarProps  -> Array ReactElement -> ReactElement
-- searchBar =
