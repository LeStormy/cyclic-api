class Events::Activities::LeisureEvent < Event
  validates :value, inclusion: ['vacation', 'travel', 'date']
end
