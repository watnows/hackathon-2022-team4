class AddColmunToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :grade, :init, null: false
    add_column :users, :faculty, :init, null: false
    add_column :users, :name, :string, null: false
  end
end
