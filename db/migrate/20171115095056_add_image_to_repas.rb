class AddImageToRepas < ActiveRecord::Migration[5.0]
  def self.up
    add_attachment :repas, :image
  end

  def self.down
    remove_attachment :repas, :image
  end
end
