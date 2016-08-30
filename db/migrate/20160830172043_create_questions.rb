class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.string :title
      t.string :answer
      t.integer :questionaire_id

      t.timestamps
    end
  end
end
