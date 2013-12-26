class Categorizations < ActiveRecord::Migration
  def change
    create_table :categorizations do |t|
      t.integer :book_id
      t.integer :category_id

      t.timestamps
    end
  end
end
