class Client < ApplicationRecord
  validates :email, format: { with: Devise.email_regexp }
end
