class Events::Bleeding::SpottingEvent < Event
  validates :value, inclusion: ['red', 'brown']
end
