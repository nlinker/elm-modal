module View.Modal exposing (view)

import DestroyCountry.View as DestroyCountry
import DestroyWorld.View as DestroyWorld
import Html exposing (Attribute, Html, div, span)
import Html.Attributes exposing (id, style, tabindex)
import Html.Events exposing (onFocus)
import Messages exposing (Msg(..))
import Models exposing (Modal(..), Model)
import Tacos.View as Tacos


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


view : Model -> Html Msg
view model =
    case model.modal of
        Nothing ->
            div [ style "display" "none" ] []

        Just modal ->
            div maskStyle
                [ span [ onFocus ResetModalFocus, tabindex 0 ] []
                , div (modalStyle ++ [ id "modal-window", tabindex -1 ])
                    [ modalContent modal ]
                , span [ onFocus ResetModalFocus, tabindex 0 ] []
                ]


modalContent : Modal -> Html Msg
modalContent wrappedModal =
    case wrappedModal of
        TacoModal _ ->
            Html.map UpdateTacos Tacos.modal

        WorldModal _ ->
            Html.map UpdateDestroyWorld DestroyWorld.modal

        CountryModal _ ->
            Html.map UpdateDestroyCountry DestroyCountry.modal
