class CreateEvents < ActiveRecord::Migration[7.0]
  def change
    create_table :events, id: :uuid do |t|
      t.string :type
      t.string :value
      t.date :date

      t.belongs_to :user, type: :uuid, index: true

      t.timestamps
    end
  end
end
