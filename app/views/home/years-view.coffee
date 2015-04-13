View = require 'views/base/view'
YearsModel = require 'models/years'

module.exports = class YearsView extends View
  autoRender: true
  className: 'years flex-list flex-2'
  template: require './templates/years'
  listen:
    'sync model': 'render'
  initialize: (options) ->
    @artist = options.artist
    @model = new YearsModel()
    @listenTo @artist, 'change:artist', @updateArtist
    super
  updateArtist: (model, slug) =>
    return if @previousArtist == slug

    @previousArtist = slug
    @model.set('artist', slug)
          .fetch()