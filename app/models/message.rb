class Message < ApplicationRecord
    belongs_to :helpful_user
    belongs_to :in_need_user
end
