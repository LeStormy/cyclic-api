class Events::Body::DigestionEvent < Event
  validates :value, :inclusion=> { :in => ['ok', 'bloated', 'gassy', 'heartburn', 'nauseous', 'vomiting'] }
end
