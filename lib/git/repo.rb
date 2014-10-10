module Git
  class Repo

    attr_reader :client, :owner, :name
    
    def initialize(client, owner, name)
      @client = client
      @owner = owner
      @name   = name
    end

    def file(path)
      Git::File.new(self, path)
    end

    def contents(path)
      client.repos
            .contents
            .get(:user => owner, :repo => name, :path => path)
            .body
    end

    def build_tree
      repo_data = client.git_data.trees.get owner, name, 'master', recursive: true
      parsed_tree = []
      repo_data[:tree].each do |leaf|
        dirname  = File.dirname(leaf[:path])
        filename = File.basename(leaf[:path])
        parsed_tree << {
          id: leaf[:path],
          parent: (dirname == "." ? "#" : dirname),
          text: filename,
          is_file: leaf[:type] == "blob"
        }
      end
      parsed_tree.to_json
    end

  end
end