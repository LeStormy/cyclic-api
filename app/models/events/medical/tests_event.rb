class Events::Medical::TestsEvent < Event
  validates :value, inclusion: ['ovulation_test_negative', 'ovulation_test_positive', 'pregnancy_test_negative', 'pregnancy_test_positive']
end
