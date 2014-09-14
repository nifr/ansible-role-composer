require 'serverspec'

if ENV['VAGRANT']
  exit 0
else
  set :backend, :exec
end

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation # :progress, :html, :textmate

  # ignore deprecation warnings
  config.expose_current_running_example_as :example

end
