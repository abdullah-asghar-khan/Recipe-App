require 'rails_helper'
RSpec.describe Food, type: :model do
  create_food = Food.new(name: 'mango', measurment_unit: 'kilograms', price: 10, quantity: 1)
  subject { create_food }

  before { subject.save }

  it 'name should not be blank' do
    subject.name = 'mango'
    expect(subject.name).to eq 'mango'
  end

  it 'measurment_unit field should not be blank' do
    subject.measurment_unit = 'kilograms'
    expect(subject.measurment_unit).to eq 'kilograms'
  end

  it 'price must be an integer greater than or equal to 0' do
    subject.price = 3
    expect(subject.price).to be >= 0
  end
end
