View = require './flex-list-view'
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
    @listenTo @artist, 'change:day', @updateShow
    @model = new YearsModel()
    super
  attach: ->
    super
  updateYear: (model, year) ->
    @model.set({ artist: @artist.get('artist'), year: year })
          .fetch()
  updateShow: (model) ->
    { month, day } = model.toJSON()
    @$(".show-#{month}-#{day}").addClass('active')
