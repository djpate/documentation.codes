define([
  'factory'
  'jquery',
  'underscore',
  'backbone'
  'views/repositories/index'
  'views/repositories/show'
  'collections/repositories'
  'models/repository'
], (factory, $, _, Backbone)->

    factory.extend 'Router', 'App.Router',
      
      routes:
        'repositories': 'index_repositories'
        'repositories/:owner/:name': 'show_repositories'
      
      index_repositories: ->
        factory.get('RepositoriesIndex.View', {collection: 'Repositories.Collection',el: '#main_content'})

      show_repositories: (owner, name)->
        repo = factory.get('Repository.Model', {owner: owner, name: name})
        factory.get('RepositoriesShow.View', {model: repo,el: '#main_content'})


)