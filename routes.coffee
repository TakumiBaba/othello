controller = require "./controller"

module.exports = (server)->

  server.get "/", (req, res, next)->
    res.send 'hoge'

  #userData
  server.get  '/user/:id', controller.getUser
  server.post '/user/:id', controller.createUser
  server.put  '/user/:id', controller.updateUser
  server.del  '/user/:id', controller.deleteUser

