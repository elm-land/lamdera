module Layouts exposing (..)


type Layout msg
    = None


map : (msg1 -> msg2) -> Layout msg1 -> Layout msg2
map fn layout =
    None
