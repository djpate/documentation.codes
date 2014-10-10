module Git
  class File
    
    attr_accessor :repo, :path, :data

    def initialize(repo, path)
      @repo = repo
      @path = path
    end

    def content
      Base64.decode64(data.content)
    end

    def data
      @data ||= repo.contents(path)
    end

  end
end