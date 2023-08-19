class Events::Pregnancy::PregnancySuperpowersEvent < Event
  validates :value, inclusion: ['super_taste', 'super_smell', 'intense_orgasm', 'pregnancy_glow']
end
