class Events::Medical::BirthControlRingEvent < Event
  validates :value, inclusion: ['placed', 'removed', 'placed_late', 'removed_late']
end
