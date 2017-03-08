module Main exposing (..)

import Html exposing (Html, program, div, h1, text)
import Html.Attributes exposing (..)


-- MODEL
type alias Model = { data : Data }
type alias Data = String


init : (Model, Cmd msg)
init = ({ data = initData }, Cmd.none)
initData = "Hello, World!"


-- UPDATE
type Msg = Noop
update : Msg -> Model -> (Model, Cmd msg)
update msg model = (model, Cmd.none)


-- VIEW
view : Model -> Html msg
view model =
    div []
        [ h1
            [ style [("text-align", "center")] ]
            [ text model.data ]
        ]


-- SUBSCRIPTIONS
subscriptions : Model -> Sub Msg
subscriptions model = Sub.none


-- MAIN
main : Program Never Model Msg
main =
    program
        { init = init
        , view = view
        , update = update
        , subscriptions = subscriptions
        }