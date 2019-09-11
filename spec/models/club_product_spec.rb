require 'rails_helper'

RSpec.describe ClubProduct, type: :model do
  context ' #validations' do 
    before(:each) do 
      @club_product = ClubProduct.create!(product_id: 1, club_id: 1)
    end

    it ' ensures successful creation' do 
      expect(ClubProduct.all.count).to eq(1)
    end

    it ' ensures product_id presence' do 
      @club_product.product_id = nil 
      expect(@club_product).to_not be_valid
    end

    it ' ensures club_id presence' do 
      @club_product.club_id = nil 
      expect(@club_product).to_not be_valid
    end

    
    it ' ensures non negative product_id' do 
      @club_product.product_id = -3 
      expect(@club_product).to_not be_valid
    end

    it ' ensures non negative club_id' do 
      @club_product.club_id = -34 
      expect(@club_product).to_not be_valid
    end
  end

  # context ' #associations' do 
  #   it ' should belong to product' do 
  #     assc = described_class.reflect_on_association(:product)
  #     expect(assc.macro).to eq(:belongs_to)
  #   end

  #   it ' should belong to club' do 
  #     assc = described_class.reflect_on_association(:club)
  #     expect(assc.macro).to eq(:belongs_to)
  #   end
  # end
end
