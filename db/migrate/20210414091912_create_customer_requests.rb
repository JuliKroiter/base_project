class CreateCustomerRequests < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_requests do |t|
      t.string  :name
      t.string  :phone
      t.text    :message
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
