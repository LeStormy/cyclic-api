class Events::Wellbeing::FeelingsEvent < Event
  validates :value, inclusion: ['mood_swings', 'not_in_control', 'happy', 'sad', 'sensitive', 'angry', 'confident', 'excited', 'irritable', 'anxious', 'insecure', 'grateful', 'indifferent']
end
