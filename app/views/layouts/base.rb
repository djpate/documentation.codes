class Views::Layouts::Base < Erector::Widget

  def content
    html do
      head do
        title "CodeGenius"
        stylesheet_link_tag    'application', media: 'all'
        javascript_include_tag 'requirejs/require.js', :'data-main' => "assets/app"
        csrf_meta_tags
        extra_head
      end
      body do
        div.container do
          header_content
          body_content
        end
      end
    end
  end

  def header_content
    header do
      div.row do
        div :class => "col-xs-12" do
          nav :class => "navbar navbar-default", :role => "navigation" do
            div :class => "container-fluid" do
              div :class => "navbar-header" do
                a "Documentation.codes", :class => "navbar-brand", :href => "/"
              end
              div :class => "collapse navbar-collapse" do
                ul :class => "nav navbar-nav" do
                  li :class => "active" do
                    a "Repositories", :href=>"#repositories"
                  end
                end
              end
            end
          end
        end
      end
    end
  end

  def body_content
    div.row :id => :main_content
  end

  def extra_head
  end

end