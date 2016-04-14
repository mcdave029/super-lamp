# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  nickname   :string
#  birthdate  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Player < ActiveRecord::Base
	validates_presence_of :first_name, :last_name, :nickname, :birthdate

	has_many :memberships
	has_many :teams, through: :memberships

	["present","former"].each do |m|
		define_method "#{m.downcase}_teams".to_sym do
      memberships.send(m).includes(:team).map{|m|m.team}	
    end
  end
  
end
