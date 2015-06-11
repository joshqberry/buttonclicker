class TeamValidator < ActiveModel::Validator
  def validate(record)
    if record.player1 == record.player2
      record.errors[:team] << "You can't team with yourself (duh)."
    end
  end
end
