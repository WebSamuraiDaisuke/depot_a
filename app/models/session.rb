# validations and has_secure_password
class Session < ApplicationRecord
  validates :email, presence: true, length: { maximum: 255 }
  validates :password, presence: true, length: { maximum: 255 }
end