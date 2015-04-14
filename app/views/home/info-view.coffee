View = require 'views/base/view'

module.exports = class InfoView extends View
  autoRender: true
  className: 'info right-sidebar flex-3'
  template: require './templates/info'
  listen:
    'sync model': 'render'
