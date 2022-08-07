class AddclassTypeToExams < ActiveRecord::Migration[7.0]
  def change
    add_column :exams, :class_type, :integer
  end
end
