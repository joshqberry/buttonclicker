class SingleValidator < ActiveModel::Validator
  def validate(record)
    if record.playerA_name == record.playerB_name
      record.errors[:single] << "You can't play with yourself (at least not here)."
    end
  end
end
