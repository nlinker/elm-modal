module Tacos.View exposing (modal, view)

import Html exposing (Attribute, Html, button, div, h3, input, p, text)
import Html.Attributes exposing (id, type_)
import Html.Events exposing (on, onClick)
import Json.Decode as Json
import Styles exposing (modalBodyStyle, modalDescStyle, modalHeaderStyle, optionButtonStyle, textInputStyle)
import Tacos.Messages exposing (Msg(..))
import Tacos.Models exposing (Model)


view : Model -> Html Msg
view model =
    div []
        [ button (optionButtonStyle ++ [ onClick StartTacoOrder ])
            [ text "Order tacos!" ]
        , if model.totalOrdered > 0 then
            div []
                [ text ("Number of tacos orderd: " ++ String.fromInt model.totalOrdered) ]

          else
            div []
                [ text "No tacos ordered yet" ]
        ]


modal : Html Msg
modal =
    div []
        [ h3 modalHeaderStyle
            [ text "How many tacos would you like?" ]
        , div modalBodyStyle
            [ p modalDescStyle
                [ text "The full weight of the Department of Defense will be put behind delivering tacos within 30 minutes." ]
            , p modalDescStyle
                [ text "Please remember that each taco ordered carries a $1,000,000 surcharge for taxpayers." ]
            , input ([ id "order-input", type_ "number", onInputInt UpdateOrderCount ] ++ textInputStyle) []
            , button (optionButtonStyle ++ [ onClick CancelOrder ])
                [ text "Nevermind" ]
            , button (optionButtonStyle ++ [ onClick PlaceOrder ])
                [ text "Feed me!!" ]
            ]
        ]


onInputInt : (Int -> msg) -> Attribute msg
onInputInt tagger =
    on "input" (Json.map tagger (Json.at [ "target", "valueAsNumber" ] Json.int))
