class AddModToStudents < ActiveRecord::Migration[5.2]
  def change
    add_reference :students, :mod, foreign_key: true
  end
end
