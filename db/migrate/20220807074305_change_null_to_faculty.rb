class ChangeNullToFaculty < ActiveRecord::Migration[7.0]
  def change
    change_column_null :users, :faculty, false
    change_column_null :users, :name, false
  end
end
