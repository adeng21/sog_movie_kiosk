class CreateFilms < ActiveRecord::Migration
  def up
    create_table :films do |t|
      t.string :title
      t.float :rating
      t.string :genre
      t.boolean :available, default: true
      t.text :description
      t.string :image_path

      t.timestamps
    end
  end

  def down
    drop_table :films
  end
end
