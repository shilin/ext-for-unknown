require 'rails_helper'

RSpec.describe Category, type: :model do
  let!(:category) { create(:category) }

  it { should have_many :products }
  it { should validate_presence_of :name }
  it { should validate_uniqueness_of :name }

  it 'has a counter cache' do
    expect {
      category.products.create(name: 'Another product', price: '5.9')
    }.to change { category.products_count }.by(1)
  end
end
