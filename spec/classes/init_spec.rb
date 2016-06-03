require 'spec_helper'
describe 'specexample' do

  context 'On Windows' do
    let(:facts) {{
      :os => {'family' => 'windows'}
    }}

    it { should contain_class('specexample') }
    it { should contain_file('hello').with(
      'content' => 'hello from 000F0001 - PAGE_FAULT_IN_NON_PAGED_AREA',
      'path'    => 'c:\hello.txt',
    )}
  end

  context 'On Linux' do
    let(:facts) {{
      :os => {'family' => 'Linux'}
    }}

    it { should contain_class('specexample') }
    it { should contain_file('hello').with(
      'content' => 'hello from linux',
      'path'    => '/tmp/hello.txt',
    )}
  end

  context 'On Solaris' do
    let(:facts) {{
      :os => {'family' => 'Solaris'}
    }}

    it { should raise_error(Puppet::Error, /unsupported os/) }
  end

end
