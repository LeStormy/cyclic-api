class Events::Body::SkinEvent < Event
  validates :value, inclusion: ['ok', 'good', 'acne', 'dry', 'oily', 'itchy']
end
