require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) { create(:category) }
  let!(:product) { create(:product, category: category) }

  it { should belong_to(:category).counter_cache(true) }

  it { should validate_presence_of :name }
  it { should validate_presence_of :price }

  it { should validate_uniqueness_of :name }

  it { should validate_numericality_of(:price).is_greater_than(0) }
end
