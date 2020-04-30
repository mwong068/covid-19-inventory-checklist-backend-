class HelpfulItem < ApplicationRecord
    belongs_to :helpful_user
    belongs_to :category
end
