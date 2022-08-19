# == Schema Information
#
# Table name: video_games
#
#  id         :bigint           not null, primary key
#  genre      :string
#  publisher  :string
#  title      :string
#  year       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class VideoGame < ApplicationRecord
  validates :title, presence: true
  validates :year, numericality: true
  validates :genre,
            inclusion: { in: ['Action', 'Action-adventure', 'Adventure', 'Gacha Game', 'Role-playing', 'Simulation', 'Strategy', 'Horror', 'Massively multiplayer online'] }, allow_blank: true
end
