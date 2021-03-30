class Content < ApplicationRecord
  validates :category_id, numericality: { other_than: 1 }

  belongs_to :user
  has_one_attached :image

  validates :title, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
