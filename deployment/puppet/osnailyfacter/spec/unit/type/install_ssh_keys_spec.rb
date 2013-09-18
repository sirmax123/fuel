require 'puppet'
describe 'Puppet::Type.newtype(:install_ssh_keys)' do
  before :each do
    @install_ssh_keys = Puppet::Type.type(:install_ssh_keys).new(:name => 'test',
                                                                :user => 'root')
  end

  it 'should be full path to the private key' do
    expect {
      @install_ssh_keys[:private_key_path] = 'root/path/key'
    }.to raise_error(Puppet::Error, /does not look/)
  end

  it 'should be full path to the public key' do
    expect {
      @install_ssh_keys[:public_key_path] = 'test/path/key.pub'
    }.to raise_error(Puppet::Error, /does not look/)
  end

  it 'should be authorized_keys or authorized_keys2' do
    expect {
      @install_ssh_keys[:authorized_keys] = 'authorized_keys4'
    }.to raise_error(Puppet::Error, /it should be/)
  end
end
