class Events::Activities::PartyingEvent < Event
  validates :value, inclusion: ['alcohol', 'cigarettes', 'big_night', 'hangover']
end
