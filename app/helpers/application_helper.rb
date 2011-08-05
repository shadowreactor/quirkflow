module ApplicationHelper
  
  def conditional_field(object,field)
    object.send(field).present? ? content_tag( :span, object.send(field), :class => field.to_s ) : nil
  end


end