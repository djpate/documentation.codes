define([
  'factory'
  'jquery',
  'underscore',
  'backbone',
  'text!templates/repositories/index.html'
  'handlebars'
], (factory, $, _, Backbone, template, Handlebars)->
  factory.extend 'View', 'RepositoriesIndex.View',
    constructed: ->
      @collection.fetch(
        success: =>
          @render()
      )
    render: ->
      template = Handlebars.compile(template);
      @$el.html(template({repositories: @collection.toJSON()}));
)
