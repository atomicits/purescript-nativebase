module InputGroup where

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)

type InputGroupProps eff ref = ViewNbPropsEx eff ref
  ( styleNb :: String  -- React.PropTypes.object,
  , regular :: Boolean
  , underline :: Boolean
  , rounded :: Boolean
  , success :: Boolean
  , error :: Boolean
  , disabled :: Boolean
  )


inputGroup :: forall  eff ref. Prop (InputGroupProps eff ref) -> Array (ReactElement) -> ReactElement
inputGroup = createElement inputGroupClass
