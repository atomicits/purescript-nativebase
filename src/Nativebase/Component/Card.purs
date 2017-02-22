module Card where

import Nativebase.ComponentClass
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)
import ViewNb (ViewNbPropsEx)
import Prelude


type CardProps eff ref = ViewNbPropsEx eff ref
  ( styleNb   :: String   -- React.PropTypes.object,
  , dataArray :: String -- React.PropTypes.object,
  , renderRow :: String  -- React.PropTypes.object,
  )


card :: forall  eff ref. Prop (CardProps eff ref) -> Array (ReactElement) -> ReactElement
card = createElement cardClass
