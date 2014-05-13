require 'spec_helper'

describe Dashboard do
  let(:dashboard) { create :dashboard }

  describe '.per_page' do
    it { described_class.per_page.should == 5 }
  end

  describe '#timestamp' do
    it { dashboard.timestamp.should == DateTime.now.utc.strftime('%d %B %Y %H:%M:%S') }
  end
end
