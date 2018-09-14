import { Elm } from "./Main";

let externalIncrementButton = document.getElementById("external-increment");

if (!(externalIncrementButton instanceof HTMLButtonElement)) {
  throw new Error("Couldn't get external button");
}

let app = Elm.Main.init({
  node: document.getElementById("elm-main")
});

externalIncrementButton.addEventListener("click", function(event) {
  app.ports.externalIncrement.send(null);
});
