class CreateInstructors < ActiveRecord::Migration[5.2]
  def change
    create_table :instructors do |t|
      t.string :name
      t.references :mod, foreign_key: true

      t.timestamps
    end
  end
end
