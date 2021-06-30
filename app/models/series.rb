class Series < ApplicationRecord
  has_rich_text :content
  has_many :books
end
