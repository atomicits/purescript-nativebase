module Drawer where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (drawerClass)
import RNX.PropTypes (Prop, UnKnownType)
import RNX.Styles


data Side = Left | Right

data Type = Overlay | Static | Displace

type DrawerStyle =
  { shadowColor :: String
  , shadowOpacity :: Number
  , shadowRadius :: Number
  , elevation :: Number
  }

type MainOverlay =
  { opacity :: Number
  , backgroundColor :: String
  , elevation :: Number
  }

type DrawerStyles =
  { drawer :: DrawerStyle
  , main :: Style
  , drawerOverlay :: Style
  , mainOverlay :: MainOverlay
  }

type DrawerProps a  =
  { acceptDoubleTap :: Boolean
  , acceptPan :: Boolean
  , acceptTap :: Boolean
  , captureGestures :: Boolean
  , children :: a
  , open :: Boolean
  , closedDrawerOffset :: Number
  , content :: a
  , deviceScreen :: UnKnownType   -- React.ScaledSize
  , disabled :: Boolean
  , initializeOpen :: Boolean
  , negotiatePan :: Boolean
  , onClose :: UnKnownType
  , onCloseStart :: UnKnownType
  , onOpen :: UnKnownType
  , onOpenStart :: UnKnownType
  , openDrawerOffset :: Number
  , openDrawerThreshold :: Number
  , panCloseMask :: Number
  , panOpenMask :: Number
  , panStartCompensation :: Boolean
  , relativeDrag :: Boolean
  , side :: Side
  , styles :: DrawerStyles
  , tapToClose :: Boolean
  , tweenDuration :: Number
  , tweenEasing :: String
  , tweenHandler :: UnKnownType
  , type :: Type
  }



drawer :: forall a. Prop (DrawerProps a) -> Array ReactElement -> ReactElement
drawer = createElement drawerClass
