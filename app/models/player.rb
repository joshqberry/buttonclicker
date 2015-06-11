class Player < ActiveRecord::Base

  has_and_belongs_to_many :teams
  has_many :singles_stats
  has_many :singles, through: :singles_stats

end
