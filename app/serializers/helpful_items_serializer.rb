class HelpfulItemsSerializer < ActiveModel::Serializer
  attributes :id, :category, :helpful_user, :name, :quantity, :description, :availability, :image_url
end
