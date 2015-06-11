class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :nickname
      t.string :photo_ref

      t.timestamps null: false
    end
  end
end
