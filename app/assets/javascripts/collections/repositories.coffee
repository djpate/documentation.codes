define([
  'factory'
  'jquery',
  'underscore',
  'backbone'
  'models/repository'
], (factory, $, _, Backbone)->
  
  factory.extend 'Collection', 'Repositories.Collection',
    model: 'RepositoryModel',
    url: '/repositories.json'

)