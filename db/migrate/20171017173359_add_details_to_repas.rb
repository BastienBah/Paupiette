class AddDetailsToRepas < ActiveRecord::Migration[5.0]
  def change
    add_column :repas, :prix, :integer
    add_column :repas, :entree, :string
    add_column :repas, :plat, :string
    add_column :repas, :dessert, :string
  end
end
