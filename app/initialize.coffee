Application = require 'application'
routes = require 'routes'

# Initialize the application on DOM ready event.
$ ->
  window.App = new Application {
    title: 'Relisten',
    controllerSuffix: '-controller',
    routes
  }
