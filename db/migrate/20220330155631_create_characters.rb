class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :prenom
      t.string :nom
      t.string :surnom
      t.text :avatar
      t.text :hero
      t.integer :age
      t.string :sexe
      t.string :monde
      t.string :race
      t.string :origine
      t.string :classe
      t.float :pv
      t.float :pm
      t.integer :destin
      t.text :histoire
      t.text :competences
      t.text :inventaire
      t.datetime :published_at

      t.timestamps
    end
  end
end
