class AddForeignKeysToPlayersTeams < ActiveRecord::Migration
  def change
    create_table :players_teams do |t|
      t.belongs_to :player, index: true
      t.belongs_to :team, index: true
  end
    add_foreign_key :players_teams, :players
    add_foreign_key :players_teams, :teams
  end
end
