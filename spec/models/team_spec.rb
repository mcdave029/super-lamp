# == Schema Information
#
# Table name: teams
#
#  id          :integer          not null, primary key
#  name        :string
#  country     :string
#  logo        :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require "rails_helper"

RSpec.describe Team do

  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to validate_presence_of :description }
  it { expect(subject).to validate_presence_of :logo }
  it { expect(subject).to validate_presence_of :country }
  it { expect(subject).to validate_length_of :description }
  it { expect(subject).to validate_uniqueness_of :name }

end
