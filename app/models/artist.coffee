Model = require 'models/base/model'

module.exports = class Artist extends Model
  url: ->
    artist = @get 'artist'

    "#{App.root}/api/artists/#{artist}/random_date"
  parse: (response) ->
    return {} unless response?.data

    date = response.data

    [year, month, day] = date.split '-'

    year = +year
    month = +month
    day = +day

    { year, month, day }
