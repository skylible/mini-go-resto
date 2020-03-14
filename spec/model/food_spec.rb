require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'is valid with valid attributes' do
    expect(Food.new(name: :nasigoreng, description: :goreng, price: 200.0)).to be_valid
  end
end
