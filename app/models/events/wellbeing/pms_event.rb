class Events::Wellbeing::PmsEvent < Event
  validates :value, inclusion: ['pms']
end
