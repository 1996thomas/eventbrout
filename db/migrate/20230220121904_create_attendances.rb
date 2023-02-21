class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.string :strip_customer_id
      t.belongs_to :participant, class_name: 'User'
      t.belongs_to :event

      t.timestamps
    end
  end
end
