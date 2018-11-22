class AddEmailToClient < ActiveRecord::Migration[5.2]
  def change
    add_column :clients, :email, :string, null: false
  end
end
