module Main exposing (main)

import Browser
import ExternalIncrement exposing (externalIncrement)
import Html exposing (Html, button, div, p, text)
import Html.Events exposing (onClick)


type alias Model =
    Int


type Msg
    = Increment


init : flags -> ( Model, Cmd msg )
init flags =
    ( 0, Cmd.none )


view : Model -> Html Msg
view model =
    div []
        [ p [] [ text <| "Counter: " ++ String.fromInt model ]
        , p []
            [ button [ onClick Increment ] [ text "Increment" ]
            ]
        ]


update : Msg -> Model -> ( Model, Cmd msg )
update msg model =
    case msg of
        Increment ->
            ( model + 1, Cmd.none )


subscriptions : Model -> Sub Msg
subscriptions model =
    externalIncrement (\() -> Increment)


main : Program () Model Msg
main =
    Browser.element
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }
