class CreateInstruments < ActiveRecord::Migration
  def change
    create_table :instruments do |t|
      t.string :name
      t.string :genre

      t.timestamps null: false
    end
  end
end
