define([
  'jquery',
  'underscore',
  'backbone'
], ($, _, Backbone)->

    return class Router extends Backbone.Router

      routes:
        'foo': 'repositories_index'

      repositories_index: ->
        console.log('index')

)