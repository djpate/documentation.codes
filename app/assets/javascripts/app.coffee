require.config(
  paths:
    jquery: 'jquery/dist/jquery'
    underscore: 'underscore/underscore'
    backbone: 'backbone/backbone'
    bootstrap: 'bootstrap/dist/js/bootstrap'
)

require([
  'router',
], (Router) ->
  window.Mediator = _.extend({}, Backbone.Events)
  window.router = new Router
  Backbone.history.start()
)