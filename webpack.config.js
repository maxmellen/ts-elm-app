const path = require("path");

module.exports = {
  mode: "production",
  entry: "./src/index.ts",
  devServer: {
    contentBase: "./dist"
  },
  module: {
    rules: [
      {
        test: /\.elm$/,
        use: {
          loader: "elm-webpack-loader",
          options: {
            warn: true,
            optimize: true
          }
        },
        include: path.resolve(__dirname, "src")
      },
      {
        test: /\.ts$/,
        use: "ts-loader",
        include: path.resolve(__dirname, "src")
      }
    ]
  },
  resolve: {
    extensions: [".elm", ".ts", ".js"]
  },
  output: {
    filename: "main.js",
    path: path.resolve(__dirname, "dist")
  }
};
