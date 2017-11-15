class AddCaractsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :ville, :string
    add_column :users, :code_postal, :integer
    add_column :users, :rue, :string
    add_column :users, :numero_rue, :integer
    add_column :users, :complement_adresse, :string
    add_column :users, :nom, :string
    add_column :users, :prenom, :string
    add_column :users, :telephone, :string
  end
end
