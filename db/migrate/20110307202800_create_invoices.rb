class CreateInvoices < ActiveRecord::Migration
  def self.up
    create_table :invoices do |t|
      t.integer :account_id
      t.string :status, :default => 'draft'
      t.date :due_at
      t.date :paid_at
      t.decimal :total
      t.timestamps
    end
  end

  def self.down
    drop_table :invoices
  end
end
