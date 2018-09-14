export namespace Elm {
  namespace Main {
    interface App {
      ports: {
        externalIncrement: { send(_: null): void };
        alert: { subscribe(callback: (data: unknown) => void): void };
      };
    }
    function init(options: { node: HTMLElement | null }): App;
  }
}
