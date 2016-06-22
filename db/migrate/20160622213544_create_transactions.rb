class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :name
      t.monetize :price
      t.integer :category, default: 0, index: true # enum
      t.boolean :outdated
      t.integer :classification, default: 0, index: true #enum
      t.date :purchase_date
      t.integer :vendor, default: 0, index: true #enum
      t.date :accounting_month
      t.text :memo

      t.timestamps null: false
    end
  end
end
