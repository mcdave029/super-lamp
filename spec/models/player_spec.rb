require "rails_helper"

RSpec.describe Player do
  
  it { expect(subject).to validate_presence_of :first_name }
  it { expect(subject).to validate_presence_of :last_name }
  it { expect(subject).to validate_presence_of :nickname }
  it { expect(subject).to validate_presence_of :birthdate }

end