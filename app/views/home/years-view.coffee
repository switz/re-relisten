View = require './flex-list-view'
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
    @listenTo @artist, 'change:year', @updateYear
    super
  updateArtist: (model, slug) =>
    @model.set('artist', slug)
          .fetch()

  updateYear: (model, year) ->
    @$(".year-#{year}").addClass('active')
