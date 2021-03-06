require 'spec_helper'

describe_recipe 'ark::default' do
  def node_attributes
    { platform: 'opensuse', version: '42.3' }
  end

  it 'installs core packages' do
    expect(chef_run).to install_package(%w(libtool autoconf make unzip rsync gcc xz bzip2 tar))
  end
end
