module Reviewar
  class Configuration
    attr_accessor :path

    def initialize
      @path = 'reviewar'
    end

    def template
      File.read(File.expand_path('../templates/document.txt.erb', __FILE__))
    end

    def pathname
      Pathname.new(path)
    end
  end
end