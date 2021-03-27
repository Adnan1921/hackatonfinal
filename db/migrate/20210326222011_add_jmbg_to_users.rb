class AddJmbgToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :jmbg, :string
  end
end
