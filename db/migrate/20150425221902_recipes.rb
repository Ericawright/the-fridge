class Recipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :cook_time
      t.text :body
      t.decimal :rating, default: 0
      t.timestamps null: false
    end
  end
end
