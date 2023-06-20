module Evergreen.V1.Main.Pages.Model exposing (..)

import Evergreen.V1.Pages.Home_
import Evergreen.V1.Pages.NotFound_


type Model
    = Home_ Evergreen.V1.Pages.Home_.Model
    | NotFound_ Evergreen.V1.Pages.NotFound_.Model
    | Redirecting_
    | Loading_
