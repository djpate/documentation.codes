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
      compiled_template = Handlebars.compile(template);
      @$el.html(compiled_template({repositories: @collection.toJSON()}));
)
