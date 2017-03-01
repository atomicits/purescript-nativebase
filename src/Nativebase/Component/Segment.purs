module Segment where

import ViewNb (ViewNbPropsEx)


type SegmentProps eff ref = ViewNbPropsEx eff ref
  ( styleNb :: String ) -- React.PropTypes.object,


-- need class
