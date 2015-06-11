class Double < ActiveRecord::Base

  include ActiveModel::Validations
  validates_with DoubleValidator

  has_many :doubles_stats
  has_many :teams, through: :doubles_stats

end
