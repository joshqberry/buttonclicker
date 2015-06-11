class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :teammember1
      t.string :teammember2
      t.string :team_players

      t.timestamps null: false
    end
  end
end
