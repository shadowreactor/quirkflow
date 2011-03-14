class Awesomenes < ActiveRecord::Base
  include Payday::Invoiceable
  
  has_many :sovereignties
end