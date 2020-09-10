class Post < ApplicationRecord
  belongs_to :user, optional: true
  validates :content, presence: true, length: { maximum: 255 }
  has_many :favorites, dependent: :destroy
end
