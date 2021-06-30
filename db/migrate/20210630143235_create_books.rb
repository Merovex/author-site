class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|
      t.references :series, null: false, foreign_key: true
      t.string :title
      t.string :slug
      t.boolean :is_featured

      t.timestamps
    end
  end
end
