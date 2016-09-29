class AddStylesToUserInstruments < ActiveRecord::Migration
  def change
    add_column :user_instruments, :styles, :string
  end
end
