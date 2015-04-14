Controller = require 'controllers/base/controller'
AboutView = require 'views/misc/about-view'

module.exports = class HomeController extends Controller
  beforeAction: ->
    super

  live: -> 0
  today: -> 0
  about: ->
    @view = new AboutView region: 'main'
