module Types exposing (..)

import Browser exposing (UrlRequest)
import Browser.Navigation exposing (Key)
import Main
import Url exposing (Url)


type alias FrontendModel =
    Main.Model


type alias BackendModel =
    { message : String
    }


type alias FrontendMsg =
    Main.Msg


type ToBackend
    = NoOpToBackend


type BackendMsg
    = NoOpBackendMsg


type ToFrontend
    = NoOpToFrontend
