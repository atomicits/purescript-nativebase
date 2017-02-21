module Fab where


type FabProps eff  =
  { styleNb        :: String   -- React.PropTypes.object
  , active         :: Boolean
  , direction      :: String
  , containerStyle :: String -- React.PropTypes.object
  , position       :: String
  , animated       :: String  -- Need to implement Animated Api in reactNative
  }


--- Need Fab Class
