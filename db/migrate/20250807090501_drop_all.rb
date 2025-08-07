class DropAll < ActiveRecord::Migration[8.0]
  def change
    drop_table :quizzes
    drop_table :quiz_questions
    drop_table :addresses
    drop_table :people
    drop_table :users
  end
end
