class Post < ApplicationRecord
  has_rich_text :content

  include Sluggable
end
