class Events::Body::HotFlashEvent < Event
  validates :value, inclusion: ['none_today', 'mild', 'moderate', 'severe', 'very_severe']
end
