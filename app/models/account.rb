class Account < ActiveRecord::Base

  has_many :invoices
  
  def bill_to
    bill_to = name
    bill_to += "\nAttn: #{attn}" if attn.present?
    bill_to += "\n#{address_1}"
    bill_to += "\n#{address_2}" if address_2.present?
    bill_to += "\n#{city_state}"
    bill_to
  end
  
  def city_state
    if city.present? && state.present?
      "#{city}, #{state}"
    else
      city.present? ? city : state
    end
  end
  
  def formatted_phone
    return nil unless phone.strip.present?
    phone_string = phone.to_i.to_s
    phone_string = "1#{phone_string}" if phone_string.size == 10
    "+#{phone_string[0,1]} (#{phone_string[1,3]}) #{phone_string[4,3]}-#{phone_string[7,4]}"
  end
    
end