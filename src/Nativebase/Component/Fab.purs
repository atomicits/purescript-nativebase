module Fab where

import RNX.PropTypes (UnKnownType)
import RNX.Styles (Style)

type FabProps eff  =
  { styleNb        :: Style
  , active         :: Boolean
  , direction      :: String
  , containerStyle :: Style
  , position       :: String
  , animated       :: UnKnownType  -- Need to implement Animated Api in reactNative
  }


--- Need Fab Class
