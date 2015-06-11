class Team < ActiveRecord::Base

  include ActiveModel::Validations
  validates_with TeamValidator

  has_and_belongs_to_many :players

  accepts_nested_attributes_for :players

  has_many :doubles_stats
  has_many :doubles, through: :doubles_stats

end
