class Book < ApplicationRecord
  belongs_to :series
  has_many :praises
  has_rich_text :blurb
  has_rich_text :excerpt

  has_one_attached :cover, dependent: :destroy
  has_one_attached :hero_background, dependent: :destroy

  include Sluggable
  scope :featured, -> { where(is_featured: true) }
  def thumb
    cover.variant(auto_orient: true, rotate: 0, resize: "200x300^", crop: '200x300+0+0')
  end
  def background
    cover.variant(auto_orient: true, rotate: 0, resize: "200x300^", crop: '200x300+0+0')
  end
  def to_s
    title
  end
end
