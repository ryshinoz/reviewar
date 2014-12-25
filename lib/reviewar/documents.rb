module Reviewar
  class Documents
    def initialize
      @table = Hash.new { |table, key| table[key] = [] }
    end

    def append(context, example, queries)
      document = Reviewar::Document.new(context.clone, example.clone, queries)
      @table[document.pathname] << document
    end

    def write
      write_documents
    end

    private

    def write_documents
      @table.each do |pathname, documents|
        pathname.parent.mkpath
        pathname.open('w') { |file| file << documents.map(&:render).join("\n").rstrip + "\n" }
      end
    end
  end
end