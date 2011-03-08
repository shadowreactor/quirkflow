class LineItemsController < InheritedResources::Base
  belongs_to :invoice
  
  def create
    create! { invoice_url(@invoice) }
  end
  
  def update
    update! { invoice_url(@invoice) }
  end
end
