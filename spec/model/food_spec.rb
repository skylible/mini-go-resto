require 'rails_helper'

RSpec.describe Food, type: :model do
  it 'is not valid without any attributes' do
    expect(Food.new(nil)).to_not be_valid
  end

  it 'is not valid with no name attribute given' do
    args = {
      description: :goreng,
      price: 200.0
    }
    expect(Food.new(args)).to_not be_valid
  end

  it 'is valid with valid attributes' do
    args = {
      name: :nasigoreng, 
      description: :goreng, 
      price: 200.0
    }
    expect(Food.new(args)).to be_valid
  end
end
