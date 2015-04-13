Controller = require 'controllers/base/controller'
HeaderView = require 'views/home/header-view'
HomePageView = require 'views/home/home-page-view'
ArtistModel = require 'models/artist'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super
    @artistModel = new ArtistModel()
    @reuse 'header', HeaderView, region: 'header'
    @reuse 'home', HomePageView, region: 'main', model: @artistModel

  index: -> @

  artist: (params) ->
    @artistModel.set('artist', params.slug)
                .fetch()

  year: (params) ->
    @artistModel.set
      artist: params.slug
      year: params.year

  show: (params) ->
    @artistModel.set
      artist: params.slug
      year: params.year
      month: params.month
      day: params.day
