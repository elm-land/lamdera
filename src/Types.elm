module Types exposing (..)

import Bridge
import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Lamdera exposing (ClientId, SessionId)
import Main as ElmLand
import Url exposing (Url)


type alias FrontendModel =
    ElmLand.Model


type alias BackendModel =
    { smashedLikes : Int
    }


type alias FrontendMsg =
    ElmLand.Msg


type alias ToBackend =
    Bridge.ToBackend


type BackendMsg
    = OnConnect SessionId ClientId


type ToFrontend
    = NewSmashedLikes Int
