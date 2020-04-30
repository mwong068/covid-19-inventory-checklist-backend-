class InNeedUser < ApplicationRecord
    has_many :needed_items
    has_many :categories, through: :needed_items
end
