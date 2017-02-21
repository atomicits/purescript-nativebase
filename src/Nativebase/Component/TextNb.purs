module TextNb where

import Text (TextPropsEx)
import React (ReactElement, createElement)
import Nativebase.ComponentClass (textClass)
import RNX.PropTypes (Prop)


type TextNbProps eff = TextNbPropsEx eff ()

type TextNbPropsEx eff r = TextPropsEx eff
 ( styleNb :: String   --- React.PropTypes.object,
 |r
 )

textNb :: forall eff. Prop (TextNbProps eff) -> Array (ReactElement) -> ReactElement
textNb = createElement textClass
