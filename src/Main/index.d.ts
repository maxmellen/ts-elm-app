export namespace Elm {
  namespace Main {
    interface App {
      ports: { externalIncrement: { send(_: null): void } };
    }
    function init(options: { node: HTMLElement | null }): App;
  }
}
