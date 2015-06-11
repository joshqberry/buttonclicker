class CreateSingles < ActiveRecord::Migration
  def change
    create_table :singles do |t|
      t.string :playerA_name
      t.string :playerB_name
      t.integer :winner_id
      t.integer :loser_id
      t.integer :winner_score
      t.integer :loser_score
      t.integer :playerA_score
      t.integer :playerB_score

      t.timestamps null: false
    end
  end
end
