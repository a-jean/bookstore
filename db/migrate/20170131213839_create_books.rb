class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.belongs_to :review, index: true
      t.string :title
      t.string :author
      t.integer :price_cents
      t.timestamps #null: false
      t.integer :quantity
    end
  end
end
