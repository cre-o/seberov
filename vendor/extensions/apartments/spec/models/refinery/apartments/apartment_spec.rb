require 'spec_helper'

module Refinery
  module Apartments
    describe Apartment do
      describe "validations", type: :model do
        subject do
          FactoryGirl.create(:apartment,
          :block => "Refinery CMS")
        end

        it { should be_valid }
        its(:errors) { should be_empty }
        its(:block) { should == "Refinery CMS" }
      end
    end
  end
end
