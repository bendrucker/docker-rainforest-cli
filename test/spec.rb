require 'serverspec'
require 'docker'

describe 'Dockerfile' do
  before(:all) do
    image = Docker::Image.build_from_dir('.')

    set :os, family: :debian
    set :backend, :docker
    set :docker_image, image.id
    set :docker_container_create_options, {Entrypoint: 'sh'}
  end

  describe file('/usr/local/bin/rainforest') do
    it { should be_file }
    it { should be_executable }
  end

  describe command('which rainforest') do
    its(:stdout) { should eq "/usr/local/bin/rainforest\n" }
  end

  describe command('rainforest --help') do
    its(:exit_status) { should eq 0 }
    its(:stdout) { should contain 'Rainforest QA' }
  end
end