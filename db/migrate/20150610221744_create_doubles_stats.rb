class CreateDoublesStats < ActiveRecord::Migration
  def change
    create_table :doubles_stats do |t|
      t.integer :team_id
      t.integer :double_id

      t.timestamps null: false
    end
  end
end
