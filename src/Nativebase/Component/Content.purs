module Content where

import Nativebase.ComponentClass (contentClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)


type ContentProps eff  =
  { keyboardAwareScrollView :: String  -- we need this library  'react-native-keyboard-aware-scroll-view';
  , styleNb :: String    ---  React.PropTypes.object,
  , padder :: Boolean
  , disableKBDismissScroll :: Boolean
  , enableResetScrollToCoords :: Boolean
  }


content :: forall eff . Prop (ContentProps eff) -> Array (ReactElement) -> ReactElement
content = createElement contentClass
