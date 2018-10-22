class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.integer :years
      t.integer :months
      t.string :species
      t.string :breed
      t.string :temperament
      t.string :description
      t.boolean :reserved
      t.boolean :adopted
      t.string :img_url
      t.integer :user_id

      t.timestamps
    end
  end
end
