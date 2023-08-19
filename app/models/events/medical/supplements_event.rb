class Events::Medical::SupplementsEvent < Event
  validates :value, inclusion: ['multivitamin', 'magnesium', 'prenatal_vitamins', 'iron', 'folic_acid', 'vitamin_d', 'calcium']
end
