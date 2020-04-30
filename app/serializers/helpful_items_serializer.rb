class HelpfulItemsSerializer < ActiveModel::Serializer
  attributes :id, :category, :name, :quantity, :description, :availability, :image_url, :helpful_user
end
