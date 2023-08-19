class Events::Medical::BirthControlPillEvent < Event
  validates :value, inclusion: ['taken', 'missed', 'late', 'double_dose', 'no_pill_day_or_sugar_pill']
end
