class Events::Body::BreastAndChestEvent < Event
  validates :value, inclusion: ['ok', 'nipple_discharge', 'dense_or_heavy', 'swollen_breasts']
end
