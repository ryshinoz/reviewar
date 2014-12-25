require 'rspec'

RSpec.configuration.before(:each, autodoc: true) do |example|
  ActiveRecord::ExplainRegistry.collect = true
end

RSpec.configuration.after(:each, autodoc: true) do |example|
  Reviewar::documents.append(self, example, ActiveRecord::ExplainRegistry.queries)
  ActiveRecord::ExplainRegistry.reset
end

RSpec.configuration.after(:suite) do
  Reviewar.documents.write
end