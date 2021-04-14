module ApplicationHelper
  def phone_to(phone_number)
    if phone_number
      if phone_number.include?(', ') || phone_number.include?(',')
        numbers = phone_number.split(', ')

        numbers.map {|number|
          phone_number = number_to_phone(number)
          link_to phone_number, "tel:#{phone_number}"
        }.join('<br>').html_safe
      else
        phone_number = number_to_phone(phone_number)
        link_to phone_number, "tel:#{phone_number}"
      end
    end
  end

  def error_messages(errors)
    list = ''
    errors.full_messages.each do |msg|
      list << content_tag(:li, msg).html_safe
    end
    content_tag(:ul) do
      list
    end
  end
end
