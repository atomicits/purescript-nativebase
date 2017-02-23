module Form where

import ViewNb (ViewNbPropsEx)


type FormProps eff ref = ViewNbPropsEx eff ref (styleNb :: String) -- React.PropTypes.object,

--- need class
