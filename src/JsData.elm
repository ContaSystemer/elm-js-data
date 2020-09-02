module JsData exposing (JsData, toString)

{-| The module contains generic data structure to communicate with JavaScript

@docs JsData, toString

-}

import Json.Encode as Encode
import String.Conversions as String


{-| Structure of the data to communicate with JavaScript
-}
type alias JsData =
    { tag : String
    , data : Encode.Value
    }


{-| Converts JS data to string
-}
toString : JsData -> String
toString { tag, data } =
    "Tag is: " ++ tag ++ " and data is: " ++ String.fromValue data
