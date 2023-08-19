class Events::Activities::ExerciseEvent < Event
  validates :value, inclusion: ['running', 'swimming', 'yoga', 'cycling', 'walking', 'pilates', 'strength_training', 'stretching', 'kegels', 'rest_day']
end
