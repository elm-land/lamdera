module Evergreen.V1.Main exposing (..)

import Browser
import Browser.Navigation
import Evergreen.V1.Main.Layouts.Model
import Evergreen.V1.Main.Layouts.Msg
import Evergreen.V1.Main.Pages.Model
import Evergreen.V1.Main.Pages.Msg
import Evergreen.V1.Shared
import Url


type alias Model =
    { key : Browser.Navigation.Key
    , url : Url.Url
    , page : Evergreen.V1.Main.Pages.Model.Model
    , layout : Maybe Evergreen.V1.Main.Layouts.Model.Model
    , shared : Evergreen.V1.Shared.Model
    }


type Msg
    = UrlRequested Browser.UrlRequest
    | UrlChanged Url.Url
    | Page Evergreen.V1.Main.Pages.Msg.Msg
    | Layout Evergreen.V1.Main.Layouts.Msg.Msg
    | Shared Evergreen.V1.Shared.Msg
    | Batch (List Msg)
