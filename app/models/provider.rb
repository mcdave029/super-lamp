# == Schema Information
#
# Table name: providers
#
#  id           :integer          not null, primary key
#  name         :string
#  uid          :string
#  token        :string
#  token_secret :string
#  avatar       :string
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Provider < ActiveRecord::Base
  validates :uid, :token, :name, presence: true
  validates :uid, uniqueness: { scope: :name }

  belongs_to :user
end
