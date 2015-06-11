class DoubleValidator < ActiveModel::Validator
  def validate(record)
    if record.teamA_id == record.teamB_id
      record.errors[:double] << "You can't play with yourselves (at least not here)."
    end
  end
end
