# frozen_string_literal: true

require "bundler/gem_tasks"
require "rspec/core/rake_task"
require "rubocop/rake_task"

# RSpec Testing Task.
RSpec::Core::RakeTask.new(:test)

# RuboCop Lint Task
RuboCop::RakeTask.new(:lint) do |t|
  t.options = %w[-A --extra-details]
end

# Generate Documentation (located in /doc/index.html )
task :doc do
  exec "yard doc"
end

# Run Benchmarks
task :benchmark do
  exec "ruby bin/benchmark"
end

task default: %i[test lint]
