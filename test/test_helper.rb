# frozen_string_literal: true

ENV["RAILS_ENV"] = "test"
require_relative "dummy/config/environment.rb"
ActiveRecord::Base.establish_connection
ActiveRecord::Migration.verbose = false
require_relative "dummy/db/schema.rb"
require "rails/test_help"

require "minitest-rails"
require "minitest-capybara"

Minitest::Rails::TestUnit = Rails::TestUnit if ActionPack::VERSION::STRING == "5.2.0"
Capybara.app = Rails.application

Rails.backtrace_cleaner.remove_silencers!
