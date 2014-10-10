class Views::Repositories::Index < Views::Layouts::Base
  def body_content
    ul do
      @repos.each do |repo|
        li do
          a repo, :href => repository_path(repo)
        end
      end
    end
  end
end