class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.date :due_on
      t.date :paid_at
      
      t.decimal :total
      
      t.string :company_name
      
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
