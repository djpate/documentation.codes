define([
  'factory'
  'jquery',
  'underscore',
  'backbone'
], (factory, $, _, Backbone)->
  factory.extend 'Model', 'Repository.Model',
    url: ->
      base = '/repositories';
      return "#{base}/#{encodeURIComponent(@get('owner'))}/#{encodeURIComponent(@get('name'))}"
)
