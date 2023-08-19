class Events::Body::HairEvent < Event
  validates :value, inclusion: ['ok_hair_day', 'good_hair_day', 'bad_hair_day', 'oily_scalp', 'dry_scalp', 'hair_loss']
end
