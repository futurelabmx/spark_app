class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.string :time
      t.float :amount
      t.string :location

      t.timestamps
    end
  end
end
