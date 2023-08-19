class Events::Medical::IudEvent < Event
  validates :value, inclusion: ['thread_checked', 'inserted', 'removed']
end
