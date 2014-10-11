jQuery ->

  class window.App.FileViewerView extends Backbone.View

    initialize: ->
      mediator.on('tree.selection', @handleSelection, @)

    handleSelection: (repository, file)->
      $.getJSON "/repositories/#{repository.get('owner')}%2F#{repository.get('name')}/#{encodeURIComponent(file.id)}", (response)=>
        @$('pre').html(atob(response.content))
        @$('h1').html(response.name)