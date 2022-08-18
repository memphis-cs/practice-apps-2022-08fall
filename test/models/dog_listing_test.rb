# == Schema Information
#
# Table name: dog_listings
#
#  id           :bigint           not null, primary key
#  breed        :string
#  name         :string
#  price        :integer
#  seller_email :string
#  sex          :string
#  weight       :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
require "test_helper"

class DogListingTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
