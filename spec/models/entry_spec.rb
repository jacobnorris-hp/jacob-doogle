require 'spec_helper'

describe Entry do
  it { should allow_mass_assignment_of :word }
  it { should have_many(:definition) }
end
