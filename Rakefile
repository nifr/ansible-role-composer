require 'rake'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec) do |t|
  if ENV['TEST_SUITE']
    t.pattern = 'tests/' + ENV['TEST_SUITE'] + '/spec/*_spec.rb'
  else 
    exit 0
  end
end

task :default => :spec
