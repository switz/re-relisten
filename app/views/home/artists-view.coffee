View = require 'views/base/view'

module.exports = class ArtistsView extends View
  autoRender: true
  className: 'artists flex-list flex-5'
  template: require './templates/artists'
  getTemplateData: -> bands: App.bands