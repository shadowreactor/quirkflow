class DashboardController < ApplicationController
  
  def index
    @accounts = Account.all
    @invoices = Invoice.all
  end
  
end