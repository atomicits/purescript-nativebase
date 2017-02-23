module ActivityIndicator where

import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)
import RNX.Color (Color)
import Unsafe.Coerce (unsafeCoerce)
import Nativebase.ComponentClass (activityIndicatorClass)


type ActivityIndicatorProps eff ref= ActivityIndicatorPropsEx eff ref ()

type ActivityIndicatorPropsEx eff ref r =  ViewNbPropsEx eff ref
  ( animating :: Boolean
  , color     :: Color
  , size      :: ActivityIndicatorSize
  , hidesWhenStopped :: Boolean
  |r
  )

newtype ActivityIndicatorSize = AISize String

small :: ActivityIndicatorSize
small = AISize "small"

large :: ActivityIndicatorSize
large = AISize "large"

indicatorSized :: Int -> ActivityIndicatorSize
indicatorSized = unsafeCoerce


activityIndicator :: forall eff ref. Prop (ActivityIndicatorProps eff ref) -> Array (ReactElement) -> ReactElement
activityIndicator = createElement activityIndicatorClass
