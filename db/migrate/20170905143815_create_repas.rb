class CreateRepas < ActiveRecord::Migration[5.0]
  def change
    create_table :repas do |t|
      t.string :titre
      t.text :descritpion
      t.datetime :date

      t.timestamps
    end
  end
end
