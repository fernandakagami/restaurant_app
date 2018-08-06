class Order < ApplicationRecord
  
  	belongs_to :product

  	validates :table, presence: true

	validates :quantity, presence: true

	validates :product_id, presence: true
end
