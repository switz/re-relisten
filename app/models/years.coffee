Model = require 'models/base/model'

module.exports = class Years extends Model
  url: ->
    artist = @get 'artist'
    "#{App.root}/api/artists/#{artist}/years"
