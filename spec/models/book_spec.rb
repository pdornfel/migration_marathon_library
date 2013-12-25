require 'spec_helper'

describe Book do
  describe 'validations' do

      it { should validate_presence_of :title }

      it { should validate_numericality_of(:rating) }

  end
end
