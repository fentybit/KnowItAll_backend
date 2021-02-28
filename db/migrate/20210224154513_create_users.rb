class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :avatar

      t.integer :animals_score, default: 0      
      t.integer :celebrities_score, default: 0
      t.integer :computer_science_score, default: 0
      t.integer :geography_score, default: 0
      t.integer :history_score, default: 0
      t.integer :mathematics_score, default: 0
      t.integer :music_score, default: 0
      t.integer :sports_score, default: 0

      t.timestamps
    end
  end
end
