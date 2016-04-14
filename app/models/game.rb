# == Schema Information
#
# Table name: games
#
#  id         :integer          not null, primary key
#  name       :string
#  kind       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Game < ActiveRecord::Base
  include Selectable 
  validates :name, :kind, presence: true
  validates :name, uniqueness: { scope: :kind }

  has_and_belongs_to_many :teams
end
