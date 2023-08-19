class Events::Body::StoolEvent < Event
  validates :value, inclusion: ['ok', 'constipation', 'diarrhea']
end
