class Events::Bleeding::FlowEvent < Event
  validates :value, inclusion: ['light', 'medium', 'heavy', 'super_heavy']
end
