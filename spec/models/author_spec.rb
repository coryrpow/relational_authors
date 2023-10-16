require "rails_helper"

describe Author, type: :model do
  describe "relationships" do
    it { should have_many(:books) }
  end

  describe "validations" do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:born) }
    it { should allow_value(true).for(:alive) }
    it { should allow_value(false).for(:alive) }
  end
end