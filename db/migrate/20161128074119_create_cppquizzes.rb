class CreateCppquizzes < ActiveRecord::Migration
  def change
    create_table :cppquizzes do |t|
      t.text :question
      t.text :ans1
      t.text :ans2
      t.text :ans3
      t.text :ans4
      t.integer :correctAns

      t.timestamps null: false
    end
  end
end
