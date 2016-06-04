class CoinsSerializer < ActiveModel::Serializer
  attributes :id, :name, :release_year, :weight, :radius, :user_id, :pic
  belongs_to :user
end
