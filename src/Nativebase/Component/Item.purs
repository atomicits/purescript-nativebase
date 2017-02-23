module Item where

import Touchable (TouchableOpacityPropsEx)


type ItemProps eff = ItemPropsEx eff

type ItemPropsEx eff = TouchableOpacityPropsEx eff
  ( styleNb :: String
  , inlineLabel :: Boolean
  , floatingLabel :: Boolean
  , stackedLabel :: Boolean
  , fixedLabel :: Boolean
  , success :: Boolean
  , error :: Boolean
  )


-- need ItemClass
