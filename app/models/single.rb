class Single < ActiveRecord::Base

  include ActiveModel::Validations
  validates_with SingleValidator


  has_many :singles_stats
  has_many :players, through: :singles_stats

end
