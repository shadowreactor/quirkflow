class RenameDueOnToDueAt < ActiveRecord::Migration
  def self.up
    rename_column :invoices, :due_on, :due_at
  end

  def self.down
    rename_column :invoices, :due_at, :due_on
  end
end
