class CreatePraises < ActiveRecord::Migration[6.1]
  def change
    create_table :praises do |t|
      t.references :book, null: false, foreign_key: true
      t.string :title

      t.timestamps
    end
  end
end
