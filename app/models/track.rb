# == Schema Information
#
# Table name: tracks
#
#  id           :bigint           not null, primary key
#  artist       :string
#  length       :integer
#  order_number :integer
#  title        :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Track < ApplicationRecord
  validates :order_number, numericality: { greater_than: 0 }
  validates :title, presence: true
  validates :length, numericality: { greater_than: 0 }
end
