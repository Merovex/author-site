class Page < ApplicationRecord
  has_rich_text :content

  validates :slug, presence: true, uniqueness: true
  before_validation :set_slug

  def to_param
    slug
  end

  private
  def set_slug
    self.slug = title.parameterize
  end
end
