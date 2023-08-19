class Events::Medical::AppointmentsEvent < Event
  validates :value, inclusion: ['ob_gyn', 'pap_smearer', 'sti_check_up', 'general_check_up', 'vaccination']
end
