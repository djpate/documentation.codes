define([
  'factory'
  'jquery',
  'underscore',
  'backbone',
  'text!templates/repositories/show.html'
  'handlebars'
  'jstree'
], (factory, $, _, Backbone, template, Handlebars)->
  factory.extend 'View', 'RepositoriesShow.View',
    constructed: ->
      @model.fetch(
        success: =>
          @render()
      )
    render: ->
      template = Handlebars.compile(template)
      @$el.html(template(@model.toJSON()))
      @loadTree()
    loadTree: ->
      @$('#tree').jstree(
        'core':
          'data': JSON.parse(@model.get('tree'))
      )
)
