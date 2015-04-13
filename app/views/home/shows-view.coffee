View = require 'views/base/view'
YearsModel = require 'models/shows'

module.exports = class ShowsView extends View
  autoRender: true
  className: 'shows flex-list flex-3'
  template: require './templates/shows'
  listen:
    'sync model': 'render'
  initialize: (options) ->
    @artist = options.artist
    @listenTo @artist, 'change:year', @updateYear
    @model = new YearsModel()
    super
  updateYear: (model, year) ->
    @model.set({ artist: @artist.get('artist'), year: year })
          .fetch()