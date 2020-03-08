module Styles exposing (..)

import Html exposing (Attribute)
import Html.Attributes exposing (style)


optionButtonStyle : List (Attribute msg)
optionButtonStyle =
    [ style "display" "inline-block"
    , style "appearance" "none"
    , style "padding" "12px, 16px"
    , style "color" "rgb(54,137,218)"
    , style "background" "transparent"
    , style "border" "none"
    , style "cursor" "pointer"
    , style "font-size" "1em"
    ]



-- MODAL STYLES


maskStyle : List (Attribute msg)
maskStyle =
    [ style "background-color" "rgba(0,0,0,0.3)"
    , style "position" "fixed"
    , style "top" "0"
    , style "left" "0"
    , style "width" "100%"
    , style "height" "100%"
    ]


modalStyle : List (Attribute msg)
modalStyle =
    [ style "background-color" "rgba(255,255,255,1.0)"
    , style "position" "absolute"
    , style "top" "50%"
    , style "left" "50%"
    , style "height" "auto"
    , style "max-height" "80%"
    , style "width" "700px"
    , style "max-width" "95%"
    , style "padding" "10px"
    , style "border-radius" "3px"
    , style "box-shadow" "1px 1px 5px rgba(0,0,0,0.5)"
    , style "transform" "translate(-50%, -50%)"
    ]


modalHeaderStyle : List (Attribute msg)
modalHeaderStyle =
    [ style "padding" "10px"
    , style "margin" "0px"
    , style "border-bottom" "1px solid rgba(0,0,0,0.3)"
    ]


modalBodyStyle : List (Attribute msg)
modalBodyStyle =
    [ style "padding" "10px"
    ]


modalDescStyle : List (Attribute msg)
modalDescStyle =
    [ style "margin" "0 0 8px 0"
    ]


textInputStyle : List (Attribute msg)
textInputStyle =
    [ style "display" "block"
    , style "width" "100%"
    , style "line-height" "24px"
    , style "margin" "0 0 8px 0"
    , style "border" "1px solid rgba(0,0,0,0.3)"
    ]
