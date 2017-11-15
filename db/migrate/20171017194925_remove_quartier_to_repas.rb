class RemoveQuartierToRepas < ActiveRecord::Migration[5.0]
  def change
    remove_column :repas, :quartier
  end
end
