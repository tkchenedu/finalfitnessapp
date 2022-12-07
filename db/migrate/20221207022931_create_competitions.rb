class CreateCompetitions < ActiveRecord::Migration[6.0]
  def change
    create_table :competitions do |t|
      t.integer :user_id
      t.integer :goalprotein
      t.integer :goal

      t.timestamps
    end
  end
end
