class Invoice < ActiveRecord::Base
  include Payday::Invoiceable
  
  has_many :line_items

  validates_presence_of :company_name
  
  # Payday won't display invoice numbers unless invoice_number exists on our invoice
  def invoice_number
    id
  end
end