module ListView where

import Prelude

import Data.Function.Eff (EffFn2)
import Data.Function.Uncurried (Fn3, mkFn2, mkFn4)
import Data.Nullable (Nullable)
import Data.StrMap (StrMap)
import React (ReactElement, createElement)
import Unsafe.Coerce (unsafeCoerce)
import Events (EventHandler, EventHandler2, ScrollEvent)
import Nativebase.ComponentClass (listViewClass)
import RNX.PropTypes (Prop, UnKnownType)
import ScrollView (ScrollViewPropsEx)


type SectionIndex = String
type RowIndex = String

type ListViewProps a section eff ref = ListViewPropsEx a section  eff ref ()

type ListViewPropsEx a section eff ref r = ScrollViewPropsEx  eff ref
  ( dataSource :: UnKnownType
  , enableEmptySections :: Boolean
  , initialListSize :: Int
  , onChangeVisibleRows :: EventHandler2 eff RowMap RowMap
  , onEndReached :: EventHandler eff (Nullable ScrollEvent)
  , onEndReachedThreshold :: Int
  , pageSize :: Int
  , renderFooter :: Unit -> ReactElement
  , renderHeader :: Unit -> ReactElement
  , renderRow :: RowRenderer a
  , renderScrollComponent :: forall props. props -> ReactElement
  , renderSectionHeader :: SectionRenderer section
  , renderSeparator :: Fn3 SectionIndex RowIndex Boolean ReactElement
  , scrollRenderAheadDistance :: Int
  | r)

type RowMap = StrMap (StrMap Boolean)

foreign import data RowRenderer :: * -> *
foreign import data SectionRenderer :: * -> *

rowRenderer :: forall a. (a -> ReactElement) -> RowRenderer a
rowRenderer = unsafeCoerce

rowRenderer' :: forall a eff. (a -> SectionIndex -> RowIndex -> EffFn2 eff SectionIndex RowIndex Unit -> ReactElement) -> RowRenderer a
rowRenderer' = unsafeCoerce <<< mkFn4

sectionRenderer :: forall section. (section -> ReactElement) -> SectionRenderer section
sectionRenderer = unsafeCoerce

sectionRenderer' :: forall section. (section -> SectionIndex -> ReactElement) -> SectionRenderer section
sectionRenderer' = unsafeCoerce <<< mkFn2


listView :: forall a section eff ref. Prop (ListViewProps a section  eff ref) -> Array (ReactElement) -> ReactElement
listView = createElement listViewClass
