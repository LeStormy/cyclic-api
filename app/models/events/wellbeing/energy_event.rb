class Events::Wellbeing::EnergyEvent < Event
  validates :value, :inclusion=> { :in => ['tired', 'exhausted', 'ok', 'energetic', 'fully_energized'] }
end
