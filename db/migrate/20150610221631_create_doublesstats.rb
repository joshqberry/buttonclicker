class CreateDoublesstats < ActiveRecord::Migration
  def change
    create_table :doublesstats do |t|
      t.integer :team_id
      t.integer :double_id

      t.timestamps null: false
    end
  end
end
