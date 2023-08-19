class Events::Body::PainEvent < Event
  validates :value, inclusion: ['pain_free', 'period_cramps', 'ovulation', 'breast_tenderness', 'headache', 'migraine', 'migraine_with_aura', 'lower_back', 'leg', 'joint', 'vulvar']
end
