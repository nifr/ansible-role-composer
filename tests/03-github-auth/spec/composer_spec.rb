require_relative "../../spec_helper"

describe file(ENV['HOME'] + '/.composer/auth.json') do
    it { should be_file }
    it { should be_owned_by 'travis' }
    its(:content) { should match '"github.com": "123"' }
end
