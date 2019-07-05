const environment = require("./environment")
const merge = require("webpack-merge")

// React Server Side Rendering webpacker config
// Builds a Node compatible file that Hypernova can load, never served to the client.

const serverEnvironment = merge(environment.toWebpackConfig(), {
  target: "node",
  entry: "./app/javascript/packs/react-hypernova.js",
  output: {
    filename: "server.js",
    path: environment.config.output.path,
    libraryTarget: "commonjs",
  },
})

// This removes the Manifest from the Server.
// Manifest overwrites the _real_ client manifest, required by Rails.
serverEnvironment.plugins = serverEnvironment.plugins
  .filter(plugin => plugin.constructor.name !== "WebpackAssetsManifest")

module.exports = serverEnvironment