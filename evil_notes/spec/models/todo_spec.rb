require 'spec_helper'

describe Todo do
  subject { FactoryGirl.create(:todo) }

  its(:title) { should == 'Conquer Andorra' }
  its(:content) { should == 'Andorra is the key to invade France' }

  context 'a duplicate title' do
    it { should_not be_valid }
  end

  
end