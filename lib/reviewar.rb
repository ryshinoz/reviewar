require 'reviewar/configuration'
require 'reviewar/documents'
require 'reviewar/document'
require 'reviewar/version'
require 'reviewar/rspec' if ENV['AUTODOC'] || ENV['REVIEWAR']

module Reviewar
  class << self
    def documents
      @documents ||= Documents.new
    end

    def configuration
      @configuration ||= Configuration.new
    end
  end
end
