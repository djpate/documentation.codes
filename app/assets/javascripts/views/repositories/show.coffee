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
      compiled_template = Handlebars.compile(template)
      @$el.html(compiled_template(@model.toJSON()))
      @loadTree()
    loadTree: ->
      @$('#tree').jstree(
        'core':
          'data': JSON.parse(@model.get('tree'))
      )
      
    events:
      'select_node.jstree #tree': 'handleSelection'

    handleSelection: (event, data)->
      selection = data.node.original
      #if selection.is_file
        # mediator.trigger('tree.selection', @model, selection)
)
