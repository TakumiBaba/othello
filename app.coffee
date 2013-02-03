restify = require 'restify'
mongoose = require 'mongoose'
config = require "./config.json"
server  = restify.createServer()

server.use restify.bodyParser()

mongoose.connect config.dbpath, (err)->
  if err
    console.log error
  else
    console.log "mongodb connected"

require('./routes')(server)

server.listen 8080, ->
  console.log 'start'