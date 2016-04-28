class DrinkSerializer < ActiveModel::Serializer
  attributes :id, :name, :ingredient, :user_id
end
