module Title where

import React (ReactElement, createElement)

import Nativebase.ComponentClass (titleClass)
import RNX.PropTypes (Prop)
import RNX.Styles (Style)
import Text (TextPropsEx)


type TitleProps eff = TextPropsEx eff  (styleNb :: Style)


title :: forall eff. Prop (TitleProps eff) -> Array (ReactElement) -> ReactElement
title = createElement titleClass
