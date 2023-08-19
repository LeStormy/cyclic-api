class Events::Bleeding::CollectionMethodEvent < Event
  validates :value, inclusion: ['tampon', 'pad', 'panty_liner', 'cup', 'period_underwear']
end
