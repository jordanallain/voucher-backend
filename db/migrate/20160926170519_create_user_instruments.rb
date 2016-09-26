class CreateUserInstruments < ActiveRecord::Migration
  def change
    create_table :user_instruments do |t|
      t.references :user, index: true, foreign_key: true
      t.references :instrument, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
