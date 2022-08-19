# == Schema Information
#
# Table name: teams
#
#  id         :bigint           not null, primary key
#  home_city  :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Team < ApplicationRecord
  validates :name, presence: true
  validates :home_city, presence: true
end
