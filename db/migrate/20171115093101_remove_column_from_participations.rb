class RemoveColumnFromParticipations < ActiveRecord::Migration[5.0]
  def change
    remove_column :participations, :repas, :string
  end
end
