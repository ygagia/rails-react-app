const hypernova = require("hypernova/server")

const env = process.env.NODE_ENV || "development"
const devMode = env === "development"

hypernova({
  // Enabling devMode is important because it renders server errors to the
  // DOM, allowing you to know when SSR is failing, and why.
  devMode,
  port: process.env.HYPERNOVA_PORT || 3030,
  getComponent: name => {
    // Allow iteration in dev, because require is cached otherwise
    if (devMode) {
      delete require.cache[require.resolve("../public/packs/server.js")]
    }

    let componentMap = require("../public/packs/server.js")

    if (componentMap[name]) return componentMap[name]
    throw new Error(
      `Could not find component named ${name} in packs/react-hypernova.js, ensure you exported it with the name ${name}`
    )
  },
})