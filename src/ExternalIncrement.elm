port module ExternalIncrement exposing (externalIncrement)


port externalIncrement : (() -> msg) -> Sub msg
