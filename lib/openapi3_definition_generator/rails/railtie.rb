module Openapi3DefinitionGenerator
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load 'tasks/openapi3_definition_generator/rails_tasks.rake'
      end
    end
  end
end
