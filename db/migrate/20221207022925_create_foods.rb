class CreateFoods < ActiveRecord::Migration[6.0]
  def change
    create_table :foods do |t|
      t.string :name
      t.integer :fat
      t.integer :carb
      t.integer :protein
      t.integer :calories
      t.string :image
      t.integer :grams
      t.integer :trackings_count

      t.timestamps
    end
  end
end
