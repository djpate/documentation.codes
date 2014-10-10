//= require jsTree/jstree.min
jQuery ->
  
  class window.RepositoryTreeView extends Backbone.View
  
    initialize: ->
      tree = @$el.jstree({
        core: {
          data: @model.get('json')
        }
      })
    
    events:
      'select_node.jstree': 'handleSelection'

    handleSelection: (event, data)->
      selection = data.node.original
      if selection.is_file
        mediator.trigger('tree.selection', @model, selection)