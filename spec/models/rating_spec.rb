require 'rails_helper'

RSpec.describe Rating, type: :model do
  context 'validation tests' do
    it 'ensures customer_id presence ' do
      rating = Rating.new(product_id: 1, value: 1).save
      expect(rating).to eq(false)
    end
    
    
    it 'ensures product_id presence ' do
      rating = Rating.new(customer_id: 1, value: 1).save
      expect(rating).to eq(false)
    end
    
    it 'ensures value presence ' do
      rating = Rating.new(customer_id: 1, product_id: 1).save
      expect(rating).to eq(false)
    end

    it 'should save successfully' do
      rating = Rating.new(customer_id: 1, product_id: 1, value: 1).save
      expect(rating).to eq(true)
    end

    
  end

  context '#Correct values' do
    it 'ensures the rating value is not negative' do
      rating = Rating.new(customer_id: 1, product_id: 1, value: -43)
      expect(rating).to_not be_valid
    end

    it 'ensures rating value is not above 5' do
      rating = Rating.new(customer_id: 1, product_id: 1, value: 17)
      expect(rating).to_not be_valid
    end
  end
end
