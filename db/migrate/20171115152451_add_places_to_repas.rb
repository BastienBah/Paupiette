class AddPlacesToRepas < ActiveRecord::Migration[5.0]
  def change
    add_column :repas, :places, :integer
  end
end
