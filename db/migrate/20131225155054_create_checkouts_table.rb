class CreateCheckoutsTable < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|

      t.string :name
      t.integer :book_id

      t.timestamps

    end
  end
end
