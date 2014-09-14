require_relative "../../spec_helper"
# File.expand_path('relative/path', File.dirname(FILE))

describe file('/opt/composer/composer.phar') do
  it { should be_file }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'testgroup' }
end

describe file('/usr/local/bin/composer') do
  it { should be_linked_to '/opt/composer/composer.phar' }
end


