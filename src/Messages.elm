module Messages exposing (..)

import DestroyCountry.Messages as DestroyCountry
import DestroyWorld.Messages as DestroyWorld
import Tacos.Messages as Tacos


type Msg
    = NoOp
    | ResetModalFocus
    | UpdateTacos Tacos.Msg
    | UpdateDestroyCountry DestroyCountry.Msg
    | UpdateDestroyWorld DestroyWorld.Msg
