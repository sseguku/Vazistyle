require 'rails_helper'

RSpec.describe Comment, type: :model do
  context '#Validation' do 
    
    before(:each) do
      @comment = Comment.create!(customer_id: 1, product_id: 1, message: 'This shirt is nice')
    end
    
    it 'ensures comments are sucessfully created' do
      expect(Comment.all.count).to eq(1)
     
    end

    it 'ensures customer_id presence' do 
      @comment.customer_id = nil
      expect(@comment).to_not be_valid
    end

    it 'ensures product_id presence' do
      @comment.product_id = nil
      expect(@comment).to_not be_valid
    end

    it 'ensures message presence' do 
      @comment.message = nil 
      expect(@comment).to_not be_valid
    end

    
    it 'ensures customer_id to be positive' do 
      @comment.customer_id = -3432
      expect(@comment).to_not be_valid
    end

    it 'ensures product_id to be positive' do
      @comment.product_id = -32434
      expect(@comment).to_not be_valid
    end
  end

  context 'More Validation Test - ' do 
    it 'ensures successful save' do
      comment = Comment.new(customer_id: 1, product_id: 1, message: 'This is nice').save
      expect(comment).to eq(true)
    end

    it 'ensures customer_id presence' do
      comment = Comment.new(product_id: 1, message: 'This is nice').save
      expect(comment).to eq(false)
    end

    
  end
end
