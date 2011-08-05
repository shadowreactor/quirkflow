class AccountsController < InheritedResources::Base
  
  def show
    @account  = Account.find(params[:id])
    @invoices = @account.invoices
  end
  
end
