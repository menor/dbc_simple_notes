require 'spec_helper'

describe Todo do
  subject { FactoryGirl.create(:todo) }

  its(:title) { should == 'Conquer Andorra' }
  its(:content) { should == 'Andorra is the key to invade France' }
  it { should validate_uniqueness_of(:title)  }
  it { should validate_presence_of(:title)  }
  it { should validate_presence_of(:content)  }

end
