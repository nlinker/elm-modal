module View.DeathScreen exposing (view)

import Html exposing (Attribute, Html, div, h2, text)
import Html.Attributes exposing (style)
import Messages exposing (Msg)


deathScreenStyle : List (Attribute msg)
deathScreenStyle =
    [ style "position" "fixed"
    , style "top" "0"
    , style "left" "0"
    , style "background-color" "rgb(0,0,0)"
    , style "color" "rgb(255,0,0)"
    , style "height" "100%"
    , style "width" "100%"
    ]


deathHeaderStyle : List (Attribute msg)
deathHeaderStyle =
    [ style "position" "absolute"
    , style "top" "50%"
    , style "left" "50%"
    , style "margin-right" "-50%"
    , style "transform" "translate(-50%, -50%)"
    ]


view : Html Msg
view =
    div deathScreenStyle
        [ h2 deathHeaderStyle
            [ text "The world has been destroyed. Have a nice day :)" ]
        ]
