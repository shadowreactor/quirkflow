class Sovereignty < ActiveRecord::Base
  include Payday::LineItemable
  
  belongs_to :awesomeness
end