class Category < ApplicationRecord
    has_many :helpful_items
    has_many :helpful_users, through: :helpful_items
    has_many :needed_items
    has_many :in_need_users, through: :needed_items
end
