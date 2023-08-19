class CreateSessions < ActiveRecord::Migration[7.0]
  def change
    create_table :sessions, id: :uuid do |t|
      t.belongs_to :user, type: :uuid
      
      t.timestamps
    end
  end
end
