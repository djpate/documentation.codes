require.config(
  paths:
    jquery: 'jquery/dist/jquery'
    underscore: 'underscore/underscore'
    backbone: 'backbone/backbone'
    bootstrap: 'bootstrap/dist/js/bootstrap'
    Factory: 'factoryjs/dist/Factory'
    factory: 'factoryjs/dist/BackboneFactory'
    text : 'requirejs-text/text'
    handlebars : 'handlebars/handlebars'
    jstree: 'jstree/dist/jstree'
)

require([
  'factory'
  'router',
], (factory, Router) ->
  # window.Mediator = _.extend({}, Backbone.Events)
  # window.backbone.router = new Router
  # Backbone.history.start()
  factory.get('App.Router')
  Backbone.history.start()
)