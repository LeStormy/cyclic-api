class Events::Medical::BirthControlImplantEvent < Event
  validates :value, inclusion: ['administered']
end
