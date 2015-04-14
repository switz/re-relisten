Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
HomePageView = require 'views/home/home-page-view'
ArtistsView = require 'views/home/artists-view'
YearsView = require 'views/home/years-view'
ShowsView = require 'views/home/shows-view'
TapesView = require 'views/home/tapes-view'
InfoView = require 'views/home/info-view'

ArtistModel = require 'models/artist'
TapesModel = require 'models/tapes'

tapesModel = null
artistModel = null

module.exports = class HomeController extends Controller
  beforeAction: ->
    super

    artistModel ||= new ArtistModel()
    @reuse 'header', HeaderView, region: 'header'

    @reuse 'homepage', HomePageView, region: 'main'

    @reuse 'artists', ArtistsView, region: 'artists', artist: artistModel

    @reuse 'years', YearsView, region: 'years' , artist: artistModel

    @reuse 'shows', ShowsView, region: 'shows' , artist: artistModel

    tapesModel = new TapesModel() unless tapesModel

    @reuse 'tapes', TapesView, region: 'tapes' , artist: artistModel, model: tapesModel

    @reuse 'info', InfoView, region: 'info' , artist: artistModel, model: tapesModel


  index: -> @

  artist: (params) ->
    artistModel.set('artist', params.slug)
                .fetch()

  year: (params) ->
    artistModel.set
      artist: params.slug
      year: params.year

  show: (params) ->
    artistModel.set
      artist: params.slug
      year: params.year
      month: params.month
      day: params.day

  song: (params) ->
    console.log params