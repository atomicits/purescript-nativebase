module Text where

import React (ReactElement, createElement)

import Events (EventHandler, LayoutEvent, TouchEvent)
import Nativebase.ComponentClass (textClasses)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)


type TextProps eff = TextPropsEx eff ()

type TextPropsEx eff r =
  { style :: Style
  , key :: String
  , testID :: String
  , numberOfLines :: Int
  , accessible :: Boolean
  , onLayout :: EventHandler eff LayoutEvent
  , onPress :: EventHandler eff TouchEvent
  , onLongPress :: EventHandler eff TouchEvent
  , selectable :: Boolean
  , ellipsizeMode :: EllipsizeMode
  , adjustsFontSizeToFit :: Boolean
  , allowFontScaling :: Boolean
  , minimumFontScale :: Number
  , suppressHilighting :: Boolean
  |r
  }


newtype EllipsizeMode = EllipsizeMode String


ellipsizeMode ::
  { head :: EllipsizeMode
  , middle :: EllipsizeMode
  , tail :: EllipsizeMode
  , clip :: EllipsizeMode
  }
ellipsizeMode =
  { head: EllipsizeMode "head"
  , middle: EllipsizeMode "middle"
  , tail: EllipsizeMode "tail"
  , clip: EllipsizeMode "clip"
  }

text :: forall eff. Prop (TextProps eff) ->  Array (ReactElement) -> ReactElement
text = createElement  textClasses
