require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  if ENV['TEST_NAME']
    t.pattern = 'tests/' + ENV['TEST_NAME'] + '/spec/*_spec.rb'
  else 
    exit 0
  end
end

task :default => :spec
