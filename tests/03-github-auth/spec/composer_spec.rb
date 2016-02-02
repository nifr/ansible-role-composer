require_relative "../../spec_helper"

describe command('composer config --global http-basic.my-repo.example.org.username') do
  its(:stdout) { should match /^user\n$/ }
end

describe command('composer config --global http-basic.my-repo.example.org.password') do
  its(:stdout) { should match /^pass\n$/ }
end

describe command('composer config --global github-oauth.github.com') do
  its(:stdout) { should match /^githubSeecret\n$/ }
end

