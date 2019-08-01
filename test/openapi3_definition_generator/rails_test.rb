require 'test_helper'

class Openapi3DefinitionGenerator::Rails::Test < ActiveSupport::TestCase
  test "truth" do
    assert_kind_of Module, Openapi3DefinitionGenerator::Rails
  end

  test 'task should print yaml to stdout' do
    Rails.application.load_tasks
    Rake.application.tasks.each(&:reenable)
    task = Rake.application['openapi3_definition:generate_yaml']

    # result including tralling space
    expected_yaml = <<~YAML
      ---
      openapi: 3.0.0
      info:
        title: ''
        description: ''
        version: 0.1.0
      paths:
        "/users(.:format)":
          get:
            summary: users
            description: users#index
            responses: 
          post:
            summary: ''
            description: users#create
            responses: 
        "/users/new(.:format)":
          get:
            summary: new_user
            description: users#new
            responses: 
        "/users/:id/edit(.:format)":
          get:
            summary: edit_user
            description: users#edit
            responses: 
        "/users/:id(.:format)":
          get:
            summary: user
            description: users#show
            responses: 
          patch:
            summary: ''
            description: users#update
            responses: 
          put:
            summary: ''
            description: users#update
            responses: 
          delete:
            summary: ''
            description: users#destroy
            responses: 
        "/foo/:bar(.:format)":
          get:
            summary: ''
            description: foo#show
            responses: 
    YAML

    assert_output(expected_yaml) { task.invoke }
  end
end
