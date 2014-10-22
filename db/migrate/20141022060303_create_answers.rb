class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :question_id
      t.text :answer
      t.string :answered_by

      t.timestamps
    end
  end
end
