define([
  'factory'
  'jquery',
  'underscore',
  'backbone'
  'views/repositories/index'
  'collections/repositories'
], (factory, $, _, Backbone)->

    factory.extend 'Router', 'App.Router',
      
      routes:
        'repositories': 'index_repositories'
      
      index_repositories: ->
        factory.get('RepositoriesIndex.View', {collection: 'Repositories.Collection',el: '#main_content'})

)