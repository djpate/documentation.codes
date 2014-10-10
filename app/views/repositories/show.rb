class Views::Repositories::Show < Views::Layouts::Base
  def body_content
    div.row do
      div :class => "col-md-3" do
        div :id => "tree", :'data-json' => @repo.build_tree, :'data-name' => @repo.name, :'data-owner' => @repo.owner
      end
      div :class => "col-md-9" do
        div :id => "file_viewer" do
          h1 :id => "filename"
          pre
        end
      end
    end
  end

  def extra_head
    javascript_include_tag 'repositories/show'
  end
end