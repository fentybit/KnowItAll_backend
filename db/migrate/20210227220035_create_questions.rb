class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.text :question
      t.string :choice1
      t.string :choice2
      t.string :choice3
      t.string :choice4
      t.string :answer

      t.timestamps
    end
  end
end
