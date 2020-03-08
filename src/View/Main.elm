module View.Main exposing (view)

import DestroyCountry.View as DestroyCountry
import DestroyWorld.View as DestroyWorld
import Html exposing (Attribute, Html, div, h2, li, text, ul)
import Html.Attributes exposing (style)
import Messages exposing (Msg(..))
import Models exposing (Model)
import Tacos.View as Tacos


mainBodyStyle : List (Attribute msg)
mainBodyStyle =
    [ style "padding" "10px"
    , style "margin" "0 auto"
    , style "width" "80%"
    , style "max-width" "1200px"
    ]


optionButtonStyle : List (Attribute msg)
optionButtonStyle =
    [ style "appearance" "none"
    , style "padding" "12px, 16px"
    , style "color" "rgb(54,137,218)"
    , style "background" "transparent"
    , style "border" "none"
    , style "cursor" "pointer"
    , style "font-size" "1em"
    ]


optionListStyle : List (Attribute msg)
optionListStyle =
    [ style "list-style" "none"
    , style "display" "block"
    , style "margin" "0"
    , style "padding" "0"
    ]


optionWrapperStyle : List (Attribute msg)
optionWrapperStyle =
    [ style "padding" "16px 12px"
    , style "border-bottom" "1px solid rgba(0,0,0,0.3)"
    ]


view : Model -> Html Msg
view model =
    div mainBodyStyle
        [ h2 [] [ text "What would you like to do today?" ]
        , ul optionListStyle
            [ li optionWrapperStyle
                [ Html.map UpdateTacos (Tacos.view model.tacos) ]
            , li optionWrapperStyle
                [ Html.map UpdateDestroyCountry (DestroyCountry.view model.destroyCountry) ]
            , li optionWrapperStyle
                [ Html.map UpdateDestroyWorld (DestroyWorld.view model.destroyWorld) ]
            ]
        ]
