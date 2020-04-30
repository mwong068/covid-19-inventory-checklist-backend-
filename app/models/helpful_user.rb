class HelpfulUser < ApplicationRecord
    has_many :helpful_items
    has_many :categories, through: :helpful_items

    has_secure_password
    validates :username, uniqueness: { case_sensitive: false }
end
