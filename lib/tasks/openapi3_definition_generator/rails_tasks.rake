# frozen_string_literal: true

namespace :openapi3_definition do
  desc 'Generate OpenAPI3 definition YAML from condig/routes.rb'
  task generate_yaml: :environment do
    require 'action_dispatch/routing/inspector'
    require 'openapi3_definition_generator/rails/openapi3_formatter'

    inspector = ActionDispatch::Routing::RoutesInspector.new(Rails.application.routes.routes)

    puts inspector.format(ActionDispatch::Routing::OpenAPI3Formatter.new, nil)
  end
end
