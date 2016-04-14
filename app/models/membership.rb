# == Schema Information
#
# Table name: memberships
#
#  id         :integer          not null, primary key
#  player_id  :integer
#  team_id    :integer
#  leaves_at  :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_memberships_on_player_id  (player_id)
#  index_memberships_on_team_id    (team_id)
#

class Membership < ActiveRecord::Base
	
	scope :present, -> { where(leaves_at:nil)}
	scope :former, -> { where.not(leaves_at:nil)}

  belongs_to :player
  belongs_to :team
  
end
