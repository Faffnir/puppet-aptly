require "spec_helper"

describe Facter::Util::Fact do
  before {
    Facter.clear
  }

  describe "get_init" do

    context 'Returns init from system'
    it do
      consul_init_output = <<-EOS
/sbin/init
      EOS
      allow(Facter::Core::Execution).to receive(:exec).with('readlink /proc/1/exe').
        and_return(consul_init_output)
      expect(Facter.fact(:aptly_get_init).value).to match('/sbin/init')
    end

  end

end
