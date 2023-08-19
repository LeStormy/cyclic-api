class Events::Pregnancy::FetalMovementsEvent < Event
  validates :value, inclusion: ['activity', 'more_activity', 'less_activity', 'fetal_hiccups']
end
