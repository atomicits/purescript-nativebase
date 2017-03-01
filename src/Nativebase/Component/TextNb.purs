module TextNb where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (textClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import Text (TextPropsEx)


type TextNbProps eff = TextNbPropsEx eff ()

type TextNbPropsEx eff r = TextPropsEx eff
 ( styleNb :: Style
 , note :: Boolean
 |r
 )


textNb :: forall eff. Prop (TextNbProps eff) -> Array (ReactElement) -> ReactElement
textNb = createElement textClass
