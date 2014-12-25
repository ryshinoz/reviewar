module Reviewar
  class Document
    def initialize(context, example, queries)
      @context = context
      @example = example
      @queries = queries
    end

    def pathname
      @path ||= begin
        payload = @example.file_path.gsub(%r<\./spec/requests/(.+)\.rb>, '\1.txt')
        Reviewar.configuration.pathname + payload
      end
    end

    def render
      ERB.new(Reviewar.configuration.template, nil, '-').result(binding)
    end

    def title
      "#{method} #{path}"
    end

    def queries
      @queries
    end

    def request
      @context.request
    end

    def method
      request.method
    end

    def path
      @example.full_description[%r<(GET|POST|PATCH|PUT|DELETE) ([^ ]+)>, 2]
    end
  end
end