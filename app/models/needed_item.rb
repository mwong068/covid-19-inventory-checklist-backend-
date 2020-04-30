class NeededItem < ApplicationRecord
    belongs_to :in_need_user
    belongs_to :category
end
