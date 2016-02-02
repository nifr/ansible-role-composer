require_relative "../../spec_helper"

describe command('composer config --global process-timeout') do
  its(:stdout) { should match /^156\n$/ }
end

describe command('composer config --global sort-packages') do
  its(:stdout) { should match /^1\n$/ }
end

describe command('composer config --global repositories.hello') do
  its(:exit_status) { should eq 0 }
end

describe command('composer global show -i andrioli/hello-composer') do
  its(:exit_status) { should eq 0 }
end
