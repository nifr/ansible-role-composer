require_relative "../../spec_helper"
# File.expand_path('relative/path', File.dirname(FILE))

describe file('/usr/local/bin/composer') do
  it { should be_file }
  it { should be_mode 755 }
  it { should be_owned_by 'root' }
  it { should be_grouped_into 'root' }
#  it { should be_executable.by('root') }
#  it { should be_executable.by_user('nifr') }
end


