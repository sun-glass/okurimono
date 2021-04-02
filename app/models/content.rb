class Content < ApplicationRecord
  validates :category_id, numericality: { other_than: 1 }
  validates :text, presence: true, unless: :was_attached?

  def was_attached?
    self.image.attached?
  end


  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
