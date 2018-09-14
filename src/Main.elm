module Main exposing (main)

import Browser
import Html exposing (Html, button, div, p, text)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment


init : Model
init =
    0


view : Model -> Html Msg
view model =
    div []
        [ p [] [ text <| "Counter: " ++ String.fromInt model ]
        , p []
            [ button [ onClick Increment ] [ text "Increment" ]
            ]
        ]


update : Msg -> Model -> Model
update msg model =
    case msg of
        Increment ->
            model + 1


main : Program () Model Msg
main =
    Browser.sandbox
        { init = init
        , view = view
        , update = update
        }
