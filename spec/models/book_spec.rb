require "rails_helper"

describe Book, type: :model do
  describe "relationships" do
    it { should belong_to(:author) }
  end

  describe "validations" do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:published) }
    it { should allow_value(true).for(:in_print) }
    it { should allow_value(false).for(:in_print) }
    it { should allow_value(true).for(:translated_english) }
    it { should allow_value(false).for(:translated_english) }
  end
end