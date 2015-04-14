View = require './flex-list-view'

module.exports = class ArtistsView extends View
  autoRender: true
  template: require './templates/artists'
  getTemplateData: -> bands: App.bands
  initialize: (options) ->
    @artist = options.artist
    @listenTo @artist, 'change:artist', @highlight
    super
  highlight: ->
    slug = @artist.get('artist')
    @$(".artist-#{slug}").addClass('active')
