class Events::Medical::BirthControlImplantEvent < Event
  validates :value, inclusion: ['inserted', 'removed']
end
