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

require "rails_helper"

RSpec.describe Game do

  it { expect(subject).to validate_presence_of :name }
  it { expect(subject).to validate_presence_of :kind }

end
