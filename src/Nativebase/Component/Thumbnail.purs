module Thumbnail where

import React (ReactElement)

import Image (ImagePropsEx)
import Nativebase.ComponentClass (thumbnailClass)
import RNX.Components (createElementOneChild)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)


type ThumbnilProps eff = ImagePropsEx eff
  ( styleNb :: Style
  , square :: Boolean
  , circular :: Boolean
  , size :: Number
  )


thumbnail :: forall eff. Prop (ThumbnilProps eff) -> ReactElement -> ReactElement
thumbnail = createElementOneChild thumbnailClass
