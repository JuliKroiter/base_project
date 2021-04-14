class CustomerRequest < ApplicationRecord
  enum status: [:new_request, :complete]
  validates_presence_of :name, :phone

  rails_admin do
    list do
      field :name
      field :phone
      field :status
      field :message
    end

    edit do
      fields :name, :phone, :message do
        read_only true
      end
      field :status
    end
  end
end
