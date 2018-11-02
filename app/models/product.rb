class Product < ApplicationRecord
  before_destroy :ensure_not_referenced_by_any_line_item
  has_many :line_items

  validates :title, :image_url, :description, presence: true
  validates :price, presence: true, numericality: { greater_than_or_equal_to: 0 }
  validates :title, uniqueness: true
  validates :image_url, allow_blank: false, format: { with: %r{\.(gif|jpg|png)\z}i,
                                                      message: 'はGIF, JPG, PNG画像のURLでなければなりません' }

  def ensure_not_referenced_by_any_line_item
    if line_items.empty?
      true
    else
      errors.add(:base, '品目が存在します。')
      false
    end
  end
end
