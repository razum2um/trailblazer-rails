# frozen_string_literal: true
require_relative "boot"
require "rails/all"
Bundler.require(*Rails.groups)

module TrailblazerTestApp
  class Application < Rails::Application
    config.active_record.sqlite3.represent_boolean_as_integer = true if config.active_record.try(:sqlite3)
  end
end
