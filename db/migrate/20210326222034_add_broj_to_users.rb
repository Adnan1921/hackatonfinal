class AddBrojToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :broj, :string
  end
end
