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

require "rails_helper"

RSpec.describe Provider do
  
  it { expect(subject).to validate_presence_of :uid }
  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to validate_presence_of :token}
  it { expect(subject).to validate_uniqueness_of :uid }

end
