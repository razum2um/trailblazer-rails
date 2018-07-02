APP_PATH = File.expand_path('test/dummy', __dir__)
APP_RAKEFILE = File.expand_path('test/dummy/Rakefile', __dir__)
load 'rails/tasks/engine.rake'
require "bundler/gem_tasks"
require "rake/testtask"
require "rubocop/rake_task"

Rake::TestTask.new(:test) do |t|
  t.libs << "test"
  t.pattern = 'test/**/*_test.rb'
end

RuboCop::RakeTask.new(:rubocop)

desc 'Running Tests'
task default: %i[test rubocop]
