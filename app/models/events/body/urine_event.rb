class Events::Body::UrineEvent < Event
  validates :value, inclusion: ['frequent_urination', 'burning_sensation', 'leaks_or_dribbles']
end
