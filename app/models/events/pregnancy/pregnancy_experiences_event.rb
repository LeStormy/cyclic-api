class Events::Pregnancy::PregnancyExperiencesEvent < Event
  validates :value, inclusion: ['nesting', 'bonding', 'contractions', 'blocked_nose', 'nose_bleed', 'dizziness', 'swollen_feet', 'leg_cramps', 'heart_palpitations']
end
