class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :email
      t.string :password_digest
      t.string :image
      t.string :username
      t.text :quote
      t.integer :trackings_count
      t.integer :competitions_count

      t.timestamps
    end
  end
end
