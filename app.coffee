express = require 'express'

app = express()

app.set('view engine', 'jade')
app.use(express.logger('dev'))
app.use require('connect-assets')()
app.use(express.static(__dirname + '/static'))

app.get '/', (req, res) ->
  res.render 'index'

port = process.env.PORT || 5000
console.log "Ready! http://localhost:#{port}"
app.listen(port)
