class Events::Wellbeing::SleepEvent < Event
  validates :value, inclusion: ['trouble_falling_asleep', 'woke_up_refreshed', 'woke_up_tired', 'restless_sleep', 'vivid_dreams', 'night_sweats']
end
