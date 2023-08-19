class Events::Body::VulvaAndVaginaEvent < Event
  validates :value, inclusion: ['vaginal_dryness', 'itchy', 'sore']
end
