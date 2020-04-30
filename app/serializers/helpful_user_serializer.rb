class HelpfulUserSerializer < ActiveModel::Serializer
  attributes :id, :username, :name, :location, :email, :phone_number, :family_size, :has_children, :can_deliver, :helpful_items, :image_url
end
