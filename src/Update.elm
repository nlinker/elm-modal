module Update exposing (update)

import DestroyCountry.Update as DestroyCountry
import DestroyWorld.Update as DestroyWorld
import Messages exposing (Msg(..))
import Models exposing (Modal(..), Model)
import Ports as Ports
import Tacos.Update as Tacos


isJust : Maybe a -> Bool
isJust maybe =
    case maybe of
        Just _ ->
            True

        _ ->
            False


focusCmd : Maybe a -> Maybe a -> Cmd Msg
focusCmd old new =
    case ( isJust old, isJust new ) of
        ( False, True ) ->
            Ports.focusModal ()

        _ ->
            Cmd.none


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        NoOp ->
            ( model, Cmd.none )

        ResetModalFocus ->
            ( model, Ports.focusModal () )

        UpdateTacos m ->
            let
                ( newTacos, _ ) =
                    Tacos.update m model.tacos

                newModel =
                    { model
                        | tacos = newTacos
                        , modal = Maybe.map TacoModal newTacos.modal
                    }

                newCommand =
                    focusCmd model.modal newModel.modal
            in
            ( newModel, newCommand )

        UpdateDestroyCountry m ->
            let
                ( newDestroyCountry, _ ) =
                    DestroyCountry.update m model.destroyCountry

                newModel =
                    { model
                        | destroyCountry = newDestroyCountry
                        , modal = Maybe.map CountryModal newDestroyCountry.modal
                    }

                newCommand =
                    focusCmd model.modal newModel.modal
            in
            ( newModel, newCommand )

        UpdateDestroyWorld m ->
            let
                ( newDestroyWorld, _ ) =
                    DestroyWorld.update m model.destroyWorld

                newModel =
                    { model
                        | destroyWorld = newDestroyWorld
                        , isWorldDestroyed = newDestroyWorld.isWorldDestroyed
                        , modal = Maybe.map WorldModal newDestroyWorld.modal
                    }

                newCommand =
                    focusCmd model.modal newModel.modal
            in
            ( newModel, newCommand )
