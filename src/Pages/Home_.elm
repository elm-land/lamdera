module Pages.Home_ exposing (page)

import Html exposing (..)
import Html.Attributes exposing (..)
import View exposing (View)


page : View msg
page =
    { title = "Elm Land ❤️Lamdera"
    , body =
        [ node "style" [] [ text """
            @import url('https://fonts.googleapis.com/css2?family=Lora:wght@600&family=Nunito+Sans&display=swap');

            html {
                height: 100%;
                color: white;
                background: linear-gradient(dodgerblue, #339);
            }
            body {
                display: flex;
                flex-direction: column;
                margin: 0;
                justify-content: center;
                align-items: center;
                height: 90vh;
                font-family: 'Lora';
            }
            h1 {
                margin: 0;
                font-weight: 600 !important;
            }
            """ ]
        , div [ style "display" "flex", style "gap" "1rem" ]
            [ img
                [ alt "Lando, the Elm Land Rainbow"
                , src "https://elm.land/images/logo-480.png"
                , style "width" "128px"
                , style "margin-right" "2.5rem"
                ]
                []
            , img
                [ alt "Laurie, the Lamdera Lambda Llamba"
                , src "https://lamdera.com/images/llama/floaty.png"
                , style "width" "81.4px"
                , style "margin-right" "1.5rem"
                , style "height" "108.4px"
                ]
                []
            ]
        , h1 [] [ text "Elm Land ❤️ Lamdera" ]
        , p
            [ style "font-family" "Nunito Sans"
            , style "opacity" "0.75"
            ]
            [ text "It's working, Mario!!" ]
        ]
    }
