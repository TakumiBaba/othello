mongoose = require 'mongoose'
Schema = mongoose.Schema

UserSchema = new Schema
  message:
    type: String
  from:
    type: String
  to:
    type: String
  created_at:
    type: Date
    default: Date.now

module.exports =
  UserSchema: UserSchema
  User: mongoose.model 'User', UserSchema