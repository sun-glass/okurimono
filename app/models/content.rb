class Content < ApplicationRecord
  validates :category_id, numericality: { other_than: 1 }

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
