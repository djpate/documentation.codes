//= require backbone/models/repository
//= require backbone/views/repository_tree
//= require backbone/views/file_viewer

$(document).ready(function () { 
  var repository = new RepositoryModel($("#tree").data())
  new RepositoryTreeView({el: '#tree', model: repository})
  new FileViewerView({el: '#file_viewer'})
});