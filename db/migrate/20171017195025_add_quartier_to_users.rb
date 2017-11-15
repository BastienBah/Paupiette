class AddQuartierToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :quartier, :string
  end
end
