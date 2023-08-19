class Events::Medical::MedicationsEvent < Event
  validates :value, inclusion: ['hormone_therapy_hrt', 'painkillers', 'antihistamine', 'antibiotics', 'cold_or_flu_meds', 'estrogen_therapy', 'progesterone_therapy', 'testosterone_therapy', 'emergency_contraception']
end
