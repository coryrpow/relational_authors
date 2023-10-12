require "rails_helper"

describe Book, type: :model do
  describe "relationships" do
    it { should belong_to(:author) }
  end
end