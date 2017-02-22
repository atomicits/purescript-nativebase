module Title where

import React (ReactElement, createElement)
import Text (TextPropsEx)
import RNX.PropTypes (Prop)
import Nativebase.ComponentClass (titleClass)


type TitleProps eff = TextPropsEx eff  (styleNb :: String)  --React.PropTypes.object


title :: forall eff. Prop (TitleProps eff) -> Array (ReactElement) -> ReactElement
title = createElement titleClass
