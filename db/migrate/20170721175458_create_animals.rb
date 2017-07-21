class CreateAnimals < ActiveRecord::Migration[5.1]
  def change
    create_table :animals do |t|
      t.string :specie
      t.string :breed
      t.string :name
      t.integer :age
      t.string :bio
      t.string :likes
      t.string :dislikes
      t.string :picture

      t.timestamps
    end
  end
end
