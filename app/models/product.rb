class Product < ApplicationRecord

	has_many :orders, dependent: :destroy

	validates :name,  presence: true, length: { maximum: 100 }, uniqueness: true
end
