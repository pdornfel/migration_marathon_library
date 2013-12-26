require 'spec_helper'

describe Book do
  describe 'validations' do

      it { should validate_presence_of :title }

      it { should validate_numericality_of(:rating) }
      it { should have_valid(:rating).when(0, 1, 99, 100) }
      it { should_not have_valid(:rating).when('fail', -1, 101) }
  end

  it { should have_many(:checkouts) }

  it { should have_many :categorizations }
  it { should have_many(:categories).through(:categorizations) }

end
