class Events::Medical::AilmentsEvent < Event
  validates :value, inclusion: ['cold_or_flu', 'allergy', 'fever', 'uti', 'sti']
end
