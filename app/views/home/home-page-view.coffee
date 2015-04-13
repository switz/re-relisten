View = require 'views/base/view'
ArtistsView = require './artists-view'
YearsView = require './years-view'
ShowsView = require './shows-view'
TapesView = require './tapes-view'
InfoView = require './info-view'

module.exports = class HomePageView extends View
  autoRender: true
  className: 'home-page'
  template: require './templates/home'
  render: ->
    super

    artistsView = new ArtistsView container: @el
    @subview 'artists', artistsView

    yearsView = new YearsView container: @el, artist: @model
    @subview 'years', yearsView

    showsView = new ShowsView container: @el, artist: @model
    @subview 'shows', showsView

    tapesView = new TapesView container: @el, artist: @model
    @subview 'tapes', tapesView

    infoView = new InfoView container: @el, artist: @model
    @subview 'info', infoView
