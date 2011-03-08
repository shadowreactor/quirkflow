class Invoice < ActiveRecord::Base
  include Payday::Invoiceable
  
  has_many :line_items
  
  def invoice_number
    id
  end
end