process.env.NODE_ENV = process.env.NODE_ENV || 'production'

const environment = require('./environment')
const serverConfig = require("./server")

module.exports = [environment.toWebpackConfig(), serverConfig]
