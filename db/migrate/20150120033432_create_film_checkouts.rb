class CreateFilmCheckouts < ActiveRecord::Migration
  def up
    create_table :film_checkouts do |t|
      t.datetime :checkout_time
      t.datetime :return_time
      t.integer :user_id
      t.integer :film_id

      t.timestamps
    end
  end

  def down
    drop_table :film_checkouts
  end
end
