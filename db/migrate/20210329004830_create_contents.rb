class CreateContents < ActiveRecord::Migration[6.0]
  def change
    create_table :contents do |t|
      t.string :name,           null: false
      t.string :title,          null: false
      t.string :text,           null: false
      t.date :date,             null: false
      t.integer :money
      t.integer :category_id,   null: false
      t.timestamps
    end
  end
end
