# == Schema Information
#
# Table name: tracks
#
#  id         :bigint           not null, primary key
#  length     :integer
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Track < ApplicationRecord
  validates :title, presence: true
  validates :length, numericality: { greater_than: 0 }
end
