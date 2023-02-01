class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books do |t|

      t.string :book_title, null: false
      t.text :description, null: false
      t.integer :user_id, null: false
      t.float :rate, null: false
      t.timestamps
    end
  end
end
