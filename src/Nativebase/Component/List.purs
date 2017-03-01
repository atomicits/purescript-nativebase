module List where

import ListView (ListViewPropsEx)
import Nativebase.ComponentClass (listClass)
import RNX.PropTypes (Prop)
import React (ReactElement, createElement)


type ListProps a section eff ref = ListViewPropsEx a section eff ref
  ( listBorderColor :: String
  , listDividerBg :: String
  , listNoteColor :: String
  , listItemPadding :: Number
  , listNoteSize :: Number
  , istItemHeight :: Number
  , inset :: Boolean
  , dataArray :: Array a
  )


list :: forall a section eff ref. Prop (ListProps a section eff ref) -> Array ReactElement -> ReactElement
list = createElement listClass
