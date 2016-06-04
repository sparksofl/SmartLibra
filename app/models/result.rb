# == Schema Information
#
# Table name: results
#
#  id           :integer          not null, primary key
#  name         :string
#  release_year :date
#  weight       :integer
#  radius       :integer
#  device_id    :integer
#  status       :string
#  saved        :boolean
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Result < ApplicationRecord
  belongs_to :device
  has_attached_file :pic, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :pic, content_type: /\Aimage\/.*\Z/
end
