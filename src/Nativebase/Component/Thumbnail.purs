module Thumbnail where

import React (ReactElement)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (thumbnailClass)
import Image (ImagePropsEx)
import RNX.Components (createElementOneChild)

type ThumbnilProps eff = ImagePropsEx eff
  ( styleNb :: String
  , square :: Boolean
  , circular :: Boolean
  , size :: Number
  )


thumbnail :: forall eff. Prop (ThumbnilProps eff) -> ReactElement -> ReactElement
thumbnail = createElementOneChild thumbnailClass
