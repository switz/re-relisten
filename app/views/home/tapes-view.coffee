View = require './flex-list-view'
TapesModel = require 'models/tapes'

module.exports = class TapesView extends View
  autoRender: true
  className: 'tapes flex-list flex-5'
  template: require './templates/tapes'
  listen:
    'sync model': 'render'
  initialize: (options) ->
    @artist = options.artist
    @listenTo @artist, 'change:day', @updateShow
    super
  updateShow: (model, year) ->
    @model.set(@artist.toJSON())
          .fetch()