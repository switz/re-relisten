View = require 'views/base/view'

# Site view is a top-level view which is bound to body.
module.exports = class SiteView extends View
  container: 'body'
  id: 'site-container'
  regions:
    header: '#header-container'
    main: '#page-container'
    artists: '#artists-list'
    years: '#years-list'
    shows: '#shows-list'
    tapes: '#tapes-list'
    info: '#info-list'
  template: require './templates/site'
