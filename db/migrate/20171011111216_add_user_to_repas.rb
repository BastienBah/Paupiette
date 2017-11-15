class AddUserToRepas < ActiveRecord::Migration[5.0]
  def change
    add_column :repas, :user_id, :integer
  end
end
