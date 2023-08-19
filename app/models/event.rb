class Event < ApplicationRecord
  belongs_to :user
  
  def as_json(options = {})
    super(options).merge({
      'type' => self.type
    })
  end
end
