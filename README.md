# Openapi3DefinitionGenerator::Rails
[![CircleCI](https://circleci.com/gh/unasuke/openapi3_definition_generator-rails.svg?style=svg)](https://circleci.com/gh/unasuke/openapi3_definition_generator-rails)

Generate minimum OpenAPI 3 definition YAML from `config/routes.rb` in your Rails application.

:warning: This gem uses Rails private API so may be broken in future.

## Usage
How to use my plugin.

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'openapi3_definition_generator-rails'
```

And then execute:

```bash
$ bin/rails openapi3_definition:generate_yaml
```

## example
In this `config/routes.rb` ...

```ruby
Rails.application.routes.draw do
  resources :users

  get '/foo/:bar', to: 'foo#show'
end
```

generates this yaml.

```yaml
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
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
