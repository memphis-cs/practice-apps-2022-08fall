# == Schema Information
#
# Table name: listings
#
#  id          :bigint           not null, primary key
#  available   :boolean
#  description :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Listing < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  validates :available, inclusion: { in: [true, false] }
end
