class Events::Wellbeing::CravingsEvent < Event
  validates :value, inclusion: ['sweet', 'salty', 'greasy', 'spicy', 'carbs']
end
