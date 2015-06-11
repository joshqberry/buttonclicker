class CreateDoubles < ActiveRecord::Migration
  def change
    create_table :doubles do |t|
      t.string :teamA_id
      t.string :teamB_id
      t.integer :teamwinner_id
      t.integer :teamloser_id
      t.integer :teamwinner_score
      t.integer :teamloser_score

      t.timestamps null: false
    end
  end
end
