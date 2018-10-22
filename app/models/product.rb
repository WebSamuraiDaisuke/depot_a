class Product < ApplicationRecord
  validates :title, :image_url, :description, presence: true
  validates :price, presence: true, numericality: {greater_than_or_equal_to: 0}
  validates :title, uniqueness: true
  validates :image_url, allow_blank: false, format: { with: %r{\.(gif|jpg|png)\z}i,
                                                     message: 'はGIF, JPG, PNG画像のURLでなければなりません' }
end
