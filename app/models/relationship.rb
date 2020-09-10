class Relationship < ApplicationRecord
  belongs_to :user
  belongs_to :follow, class_name: 'User'
  validates_uniqueness_of :post_id, scope: :user_id
end
