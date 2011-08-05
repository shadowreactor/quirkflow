class LineItem < ActiveRecord::Base
  include Payday::LineItemable
  belongs_to :invoice
  validates_numericality_of :price
  validates_numericality_of :quantity
  validates_presence_of :description
end