class Events::Wellbeing::MindEvent < Event
  validates :value, inclusion: ['forgetful', 'brain_fog', 'calm', 'stressed', 'focused', 'distracted', 'motivated', 'unmotivated', 'creative', 'productive', 'unproductive']
end
