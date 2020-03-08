module View exposing (view)

import Browser
import Html exposing (Attribute, Html, div)
import Html.Attributes exposing (style)
import Messages exposing (Msg)
import Models exposing (Model)
import View.DeathScreen as DeathScreen
import View.Header as Header
import View.Main as Main
import View.Modal as Modal


mainContentStyle : List (Attribute Msg)
mainContentStyle =
    [ style "position" "relative"
    , style "background-color" "rgb(255,255,255)"
    , style "margin" "0"
    ]


view : Model -> Browser.Document Msg
view model =
    let
        body =
            case model.isWorldDestroyed of
                False ->
                    div mainContentStyle
                        [ Header.view
                        , Main.view model
                        , Modal.view model
                        ]

                True ->
                    DeathScreen.view
    in
    Browser.Document "My title" [ body ]
