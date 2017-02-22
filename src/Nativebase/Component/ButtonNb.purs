module ButtonNb where

import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (buttonClass)
import React (ReactElement, createElement)
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
  , disabledNb :: Boolean
  , rounded :: Boolean
  , large :: Boolean
  , small :: Boolean
  , active :: Boolean
  , badgeColor :: String
  , badgeValueStyle :: String  --React.PropTypes.object
  )


buttonNb :: forall eff. Prop (ButtonNbProps eff) -> Array (ReactElement) -> ReactElement
buttonNb = createElement buttonClass
