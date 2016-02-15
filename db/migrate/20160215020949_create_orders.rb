class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.belongs_to :customer, index: true
      t.datetime :order_date
      t.timestamps null: false
    end
  end
end
