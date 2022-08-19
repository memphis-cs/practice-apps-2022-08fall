# == Schema Information
#
# Table name: players
#
#  id         :bigint           not null, primary key
#  first_name :string
#  last_name  :string
#  position   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Player < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :position, inclusion: { in: %w[G F] }
end
