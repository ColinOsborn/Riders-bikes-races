require 'rails_helper'

RSpec.describe Rider, type: :model do
  context "validations" do
  it { is_expected.to validate_uniqueness_of(:name) }
  it { is_expected.to validate_uniqueness_of(:image_path) }
  it { is_expected.to validate_uniqueness_of(:name) }
  # pending "add some examples to (or delete) #{__FILE__}"
  end
end
