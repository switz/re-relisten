Model = require 'models/base/model'

module.exports = class Years extends Model
  url: ->
    year = @get 'year'
    artist = @get 'artist'
    "#{App.root}/api/artists/#{artist}/years/#{year}"

  parse: (response) ->
    response.data.shows.map (show) ->
      [year, month, day] = show.display_date.split '-'

      show.year = +year
      show.month = +month
      show.day = +day

      show.day = +day.split(' ')[0] if !show.day

      show

    response.data
