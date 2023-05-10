module Frontend exposing (..)

import Browser exposing (UrlRequest(..))
import Browser.Navigation as Nav
import Html
import Html.Attributes as Attr
import Json.Encode
import Lamdera
import Main
import Types exposing (..)
import Url


type alias Model =
    FrontendModel


app =
    Lamdera.frontend
        { init = Main.init Json.Encode.null
        , onUrlRequest = Main.UrlRequested
        , onUrlChange = Main.UrlChanged
        , update = Main.update
        , updateFromBackend = updateFromBackend
        , subscriptions = Main.subscriptions
        , view = Main.view
        }


updateFromBackend : ToFrontend -> Model -> ( Model, Cmd FrontendMsg )
updateFromBackend msg model =
    case msg of
        NoOpToFrontend ->
            ( model, Cmd.none )
