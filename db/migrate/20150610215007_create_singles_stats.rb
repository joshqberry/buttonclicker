class CreateSinglesStats < ActiveRecord::Migration
  def change
    create_table :singles_stats do |t|
      t.integer :player_id
      t.integer :single_id

      t.timestamps null: false
    end
  end
end
