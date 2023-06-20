module Evergreen.V1.Main.Pages.Msg exposing (..)

import Evergreen.V1.Pages.Home_
import Evergreen.V1.Pages.NotFound_


type Msg
    = Home_ Evergreen.V1.Pages.Home_.Msg
    | NotFound_ Evergreen.V1.Pages.NotFound_.Msg
