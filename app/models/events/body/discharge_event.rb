class Events::Body::DischargeEvent < Event
  validates :value, :inclusion=> { :in => ['none', 'sticky', 'creamy', 'eggwhite', 'atypical'] }
end
