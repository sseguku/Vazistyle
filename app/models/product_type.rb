class ProductType < ApplicationRecord
    validates :name, presence: true
end
