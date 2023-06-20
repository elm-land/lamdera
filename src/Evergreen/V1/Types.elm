module Evergreen.V1.Types exposing (..)

import Evergreen.V1.Bridge
import Evergreen.V1.Main
import Lamdera


type alias FrontendModel =
    Evergreen.V1.Main.Model


type alias BackendModel =
    { smashedLikes : Int
    }


type alias FrontendMsg =
    Evergreen.V1.Main.Msg


type alias ToBackend =
    Evergreen.V1.Bridge.ToBackend


type BackendMsg
    = OnConnect Lamdera.SessionId Lamdera.ClientId


type ToFrontend
    = NewSmashedLikes Int
