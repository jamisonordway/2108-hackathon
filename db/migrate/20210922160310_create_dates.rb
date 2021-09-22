class CreateDates < ActiveRecord::Migration[5.2]
  def change
    create_table :dates do |t|
      t.integer :time_of_day
      t.string :status
      t.references :mod, foreign_key: true

      t.timestamps
    end
  end
end
