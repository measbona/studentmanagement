class CreateStudents < ActiveRecord::Migration[5.2]
  def change
    create_table :students do |t|
      t.string :name
      t.string :gender
      t.string :address

      t.timestamps
    end
  end
end
