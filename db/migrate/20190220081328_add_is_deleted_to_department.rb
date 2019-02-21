class AddIsDeletedToDepartment < ActiveRecord::Migration[5.2]
  def change
    add_column :departments, :is_deleted, :boolean , default: false
  end
end
