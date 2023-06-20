module Main.Pages.Msg exposing (Msg(..))

import Pages.Home_
import Pages.NotFound_


type Msg
    = Home_ Pages.Home_.Msg
    | NotFound_ Pages.NotFound_.Msg
