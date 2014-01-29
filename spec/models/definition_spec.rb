require 'spec_helper'

describe Definition do
  it { should allow_mass_assignment_of(:text) }
  it { should belong_to(:entry) }
end
