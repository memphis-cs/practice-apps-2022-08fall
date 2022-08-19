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
require "test_helper"

class VideoGameTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
