class Content < ApplicationRecord
  validates :category_id, presence: true, numericality: { other_than: 1 }
  validates :text, presence: true, unless: :was_attached?

  with_options presence: true do
    validates :name
    validates :title
    validates :date
  end

  validates :money, numericality: { only_integer: true }

  def was_attached?
    image.attached?
  end

  belongs_to :user
  has_one_attached :image

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
end
