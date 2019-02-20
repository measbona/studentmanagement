class CreateStudentinfos < ActiveRecord::Migration[5.2]
  def change
    create_table :studentinfos do |t|
      t.string :name
      t.string :gender
      t.string :address
      t.string :department

      t.timestamps
    end
  end
end
