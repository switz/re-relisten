Model = require 'models/base/model'
{ addZero } = require 'lib/utils'

module.exports = class Tapes extends Model
  url: ->
    artist = @get 'artist'
    year = @get 'year'
    month = addZero @get 'month'
    day = addZero @get 'day'

    "#{App.root}/api/artists/#{artist}/years/#{year}/shows/#{year}-#{month}-#{day}"