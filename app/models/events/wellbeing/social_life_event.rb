class Events::Wellbeing::SocialLifeEvent < Event
  validates :value, inclusion: ['sociable', 'withdrawn', 'supportive', 'argumentative']
end
