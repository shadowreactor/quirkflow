class InvoicesController < InheritedResources::Base
  
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
end
