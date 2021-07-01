class AddHeroHeadlineToBook < ActiveRecord::Migration[6.1]
  def change
    add_column :books, :headline, :string
  end
end
