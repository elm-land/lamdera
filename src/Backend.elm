module Backend exposing (..)

import Bridge exposing (..)
import Html
import Lamdera exposing (ClientId, SessionId)
import Types exposing (BackendModel, BackendMsg(..), ToFrontend(..))


type alias Model =
    BackendModel


app =
    Lamdera.backend
        { init = init
        , update = update
        , updateFromFrontend = updateFromFrontend
        , subscriptions = \m -> Lamdera.onConnect OnConnect
        }


init : ( Model, Cmd BackendMsg )
init =
    ( { smashedLikes = 0 }
    , Cmd.none
    )


update : BackendMsg -> Model -> ( Model, Cmd BackendMsg )
update msg model =
    case msg of
        OnConnect sid cid ->
            ( model, Lamdera.sendToFrontend cid <| NewSmashedLikes model.smashedLikes )


updateFromFrontend : SessionId -> ClientId -> ToBackend -> Model -> ( Model, Cmd BackendMsg )
updateFromFrontend sessionId clientId msg model =
    case msg of
        SmashedLikeButton ->
            let
                newSmashedLikes =
                    model.smashedLikes + 1
            in
            ( { model | smashedLikes = newSmashedLikes }, Lamdera.broadcast <| NewSmashedLikes newSmashedLikes )
