class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :service, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true

      t.timestamps
    end
  end
end
