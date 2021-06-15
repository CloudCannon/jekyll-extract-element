# frozen_string_literal: true

require "bundler/gem_tasks"
require "rake"
require "rake/testtask"

Rake::TestTask.new do |t|
  t.libs.push "lib"
  t.libs.push "specs"
  t.verbose = true
  t.warning = false
  t.pattern = "spec/**/*_spec.rb"
  t.test_files = FileList["spec/**/*_spec.rb"]
end

desc "Run tests"
task :default => [:test]
