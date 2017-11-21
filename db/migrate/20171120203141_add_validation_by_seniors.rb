class AddValidationBySeniors < ActiveRecord::Migration[5.0]
  def change
    add_column :participations, :is_guest, :boolean
  end
end
