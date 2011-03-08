class InvoicesController < InheritedResources::Base
  custom_actions :resource => :mark_paid
  
  def show
    show! do |format|
      format.html
      format.pdf do
        send_data(@invoice.render_pdf, :filename => "Invoice #{@invoice.id}.pdf", :type => "application/pdf", :disposition => "inline")
      end
    end
  end
  
  def create
    create! { invoices_url }
  end
  
  def mark_paid
    mark_paid! do
      if !@invoice.paid?
        @invoice.update_attribute(:paid_at, Time.now)
      end
    
      redirect_to @invoice and return
    end
  end
end
