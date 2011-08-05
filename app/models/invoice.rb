class Invoice < ActiveRecord::Base
  include Payday::Invoiceable
  
  has_many :line_items
  belongs_to :account

  validates_presence_of :account_id
  
  def invoice_details; return ''; end
  
  def bill_to
    account.bill_to
  end
  
  # Payday won't display invoice numbers unless invoice_number exists on our invoice
  def invoice_number
    id
  end

end