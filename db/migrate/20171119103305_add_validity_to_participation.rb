class AddValidityToParticipation < ActiveRecord::Migration[5.0]
  def change
    add_column :participations, :is_valid, :boolean
  end
end
