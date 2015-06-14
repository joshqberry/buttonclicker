class TeamValidator < ActiveModel::Validator
  def validate(record)
    if record.teammember1 == record.teammember2
      record.errors[:team] << "You can't team with yourself (duh)."
    end
  end
end
