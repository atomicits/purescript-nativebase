module ButtonNb where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (buttonClass)
import RNX.Color (Color)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import Touchable (TouchableOpacityPropsEx)


type ButtonNbProps eff = ButtonNbPropsEx eff

type ButtonNbPropsEx eff = TouchableOpacityPropsEx eff
  ( block :: Boolean
  , primary :: Boolean
  , transparent :: Boolean
  , success :: Boolean
  , danger :: Boolean
  , warning :: Boolean
  , info :: Boolean
  , bordered :: Boolean
  , capitalize :: Boolean
  , color :: Color
  , textStyle :: Style
  , disabledNb :: Boolean
  , rounded :: Boolean
  , large :: Boolean
  , small :: Boolean
  , active :: Boolean
  , iconLeft :: Boolean
  , iconRight :: Boolean
  , inputButton :: Boolean
  , badgeColor :: String
  , badgeValueStyle :: Style
  )


buttonNb :: forall eff. Prop (ButtonNbProps eff) -> Array (ReactElement) -> ReactElement
buttonNb = createElement buttonClass
