View = require 'views/base/view'

module.exports = class FlexListView extends View
  events:
    'click a': 'click'
  attach: ->
    super
    @$links = @$('a')

  click: (e) ->
    @$links.removeClass('active')
