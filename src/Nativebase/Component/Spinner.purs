module Spinner where

import React (ReactElement, createElement)

import ActivityIndicator (ActivityIndicatorPropsEx)
import Nativebase.ComponentClass (spinnerClass)
import RNX.PropTypes (Prop)


type SpinnerProps eff ref = ActivityIndicatorPropsEx eff ref
  ( colorNb :: String
  , inverse :: Boolean
  )


spinner :: forall eff ref. Prop (SpinnerProps eff ref) -> Array (ReactElement) -> ReactElement
spinner = createElement spinnerClass
