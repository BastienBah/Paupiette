class AddColumnToParticipations < ActiveRecord::Migration[5.0]
  def change
    add_column :participations, :repa_id, :integer
  end
end
