class RemoveGradeFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :grade, :init
  end
end
