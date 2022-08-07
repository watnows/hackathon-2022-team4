class Exam < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :class_name, :string
    add_column :exams, :impression, :string
    add_column :exams, :content, :string
    add_column :exams, :teacher_name, :string
    add_column :exams, :examdate, :date
    add_column :exams, :adddate, :datetime
    add_reference :exams, :user, foreign_key: true
    change_column :exams, :user_id, :integer, null: false 
  end

end
