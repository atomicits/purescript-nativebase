module Spinner where

import React (ReactElement, createElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (spinnerClass)
import ActivityIndicator (ActivityIndicatorPropsEx)


type SpinnerProps eff ref = ActivityIndicatorPropsEx eff ref
  ( colorNb :: String
  , inverse :: Boolean
  )


spinner :: forall eff ref. Prop (SpinnerProps eff ref) -> Array (ReactElement) -> ReactElement
spinner = createElement spinnerClass
