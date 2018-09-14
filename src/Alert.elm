port module Alert exposing (alert)

import Json.Encode as E


port alert : E.Value -> Cmd msg
