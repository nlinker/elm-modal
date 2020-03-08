module Main exposing (..)

import Browser
import Messages exposing (Msg)
import Models exposing (Model, model)
import Update exposing (update)
import View exposing (view)


type alias Flags = ()


main : Program Flags Model Msg
main =
    Browser.document
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }


init : Flags -> ( Model, Cmd Msg )
init _ =
    ( model, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions _ =
    Sub.none
