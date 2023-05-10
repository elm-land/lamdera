module Types exposing (..)

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Main as ElmLand
import Url exposing (Url)


type alias FrontendModel =
    ElmLand.Model


type alias BackendModel =
    { message : String
    }


type alias FrontendMsg =
    ElmLand.Msg


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
