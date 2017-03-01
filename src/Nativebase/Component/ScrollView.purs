module ScrollView where

import Unsafe.Coerce (unsafeCoerce)
import React (ReactElement, createElement)

import Events (EventHandler, EventHandler2, ScrollEvent, UnitEventHandler)
import Nativebase.ComponentClass
import RNX.Color (Color)
import RNX.PropTypes (Insets, Prop)
import RNX.Styles (Style)
import ViewNb (ViewNbPropsEx)


type ScrollViewProps eff ref = ScrollViewPropsEx eff ref ()

type RefreshProps eff =
  { onRefresh :: UnitEventHandler eff
  , refreshing :: Boolean
  , colors :: Array Color
  , enabled :: Boolean
  , progressBackgroundColor :: Color
  , progressViewOffset :: Number
  , size :: RefreshControlSize
  , tintColor :: Color
  , title :: String
  , titleColor :: Color
  }


type ScrollViewPropsEx eff ref r = ViewNbPropsEx eff ref
  ( contentContainerStyle :: Style
  , horizontal :: Boolean
  , keyboardDismissMode :: KeyboardDismissMode
  , keyboardShouldPersistTaps :: KeyboardShouldPersistTaps
  , onContentSizeChange ::   EventHandler2 eff Number Number
  , onScroll :: EventHandler eff ScrollEvent
  , pagingEnabled :: Boolean
  , refreshControl :: RefreshControl
  , scrollEnabled :: Boolean
  , showsHorizontalScrollIndicator :: Boolean
  , showsVerticalScrollIndicator :: Boolean
  | r
  )


newtype KeyboardDismissMode = KeyboardDismissMode String
keyboardDismissMode ::
  { none :: KeyboardDismissMode
  , interactive :: KeyboardDismissMode
  , onDrag :: KeyboardDismissMode
  }
keyboardDismissMode =
  { none: KeyboardDismissMode "none"
  , interactive: KeyboardDismissMode "interactive"
  , onDrag: KeyboardDismissMode "on-drag"
  }


newtype KeyboardShouldPersistTaps = KeyboardShouldPersistTaps String
keyboardShouldPersistTaps ::
  { always :: KeyboardShouldPersistTaps
  , never :: KeyboardShouldPersistTaps
  , handled :: KeyboardShouldPersistTaps
  }
keyboardShouldPersistTaps =
  { always: KeyboardShouldPersistTaps "always"
  , never: KeyboardShouldPersistTaps "never"
  , handled: KeyboardShouldPersistTaps "handled"
  }


newtype RefreshControl = RefreshControl ReactElement


type ScrollViewAndroid =
  ( endFillColor :: Color
  , scrollPerfTag :: String
  )

type ScrollViewIOS eff =
  ( alwaysBounceHorizontal :: Boolean
  , alwaysBounceVertical :: Boolean
  , automaticallyAdjustContentInsets :: Boolean
  , bounces :: Boolean
  , bouncesZoom :: Boolean
  , canCancelContentTouches :: Boolean
  , centerContent :: Boolean
  , contentInset :: Insets
  , contentOffset :: {x::Number, y::Number}
  , decelerationRate :: DecelerationRate
  , directionalLockEnabled :: Boolean
  , indicatorStyle :: IndicatorStyle
  , maximumZoomScale :: Number
  , minimumZoomScale :: Number
  , onScrollAnimationEnd :: UnitEventHandler eff
  , scrollEventThrottle :: Number
  , scrollIndicatorInsets :: Insets
  , scrollsToTop :: Boolean
  , snapToAlignment :: SnapToAlignment
  , snapToInterval :: Number
  , stickyHeaderIndices :: Array Number
  , zoomScale :: Number
  )


foreign import data RefreshControlSize :: *
foreign import rcSizeImpl :: String -> RefreshControlSize


refreshControlSize ::
  { default :: RefreshControlSize
  , large :: RefreshControlSize
  }
refreshControlSize =
  { default: rcSizeImpl "DEFAULT"
  , large: rcSizeImpl "LARGE"
  }


newtype DecelerationRate = DecelerationRate String
decelerationRate :: { fast :: DecelerationRate
                    , normal :: DecelerationRate
                    }
decelerationRate = { fast: DecelerationRate "fast"
                   , normal: DecelerationRate "normal"
                   }

decelerateBy :: Number -> DecelerationRate
decelerateBy = unsafeCoerce


newtype IndicatorStyle = IndicatorStyle String


indicatorStyle ::
  { default :: IndicatorStyle
  , black :: IndicatorStyle
  , white :: IndicatorStyle
  }
indicatorStyle =
  { default: IndicatorStyle "default"
  , black: IndicatorStyle "black"
  , white: IndicatorStyle "white"
  }


newtype SnapToAlignment = SnapToAlignment String


snapToAlignment ::
  { start :: SnapToAlignment
  , center :: SnapToAlignment
  , end :: SnapToAlignment
  }
snapToAlignment =
  { start: SnapToAlignment "start"
  , center: SnapToAlignment "center"
  , end: SnapToAlignment "end"
  }


refreshControl' :: forall eff. Prop (RefreshProps eff) ->  Array (ReactElement)  -> ReactElement
refreshControl'  = createElement refreshControlClass

scrollView :: forall eff ref. Prop (ScrollViewProps eff ref) -> Array (ReactElement) -> ReactElement
scrollView = createElement scrollViewClass
