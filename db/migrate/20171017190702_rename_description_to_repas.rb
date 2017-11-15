class RenameDescriptionToRepas < ActiveRecord::Migration[5.0]
  def change
    rename_column :repas, :descritpion, :menu
  end
end
