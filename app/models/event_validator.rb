class EventValidator < ActiveModel::Validator
  
  def validate(record)
    if record.duration%5 != 0
      record.errors.add :duration, "Pas multiple de 5"
    elsif record.start_date < DateTime.now
      record.errors.add :start_date, "Cette date est déja passée"
    end
  end
end