class Events::Activities::SexLifeEvent < Event
  validates :value, inclusion: ['protected', 'unprotected', 'withdrawal', 'no_sex_today', 'high_sex_drive', 'low_sex_drive', 'masturbation', 'sex_toys', 'orgasm', 'no_orgasm', 'fantasies', 'painful_intercourse']
end
