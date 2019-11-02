require 'rails_helper'

RSpec.describe SchoolClass, type: :model do
  before(:each) do
    @school_class = SchoolClass.create!(title: "Design", room_number: 7)
  end

  it 'can be created' do
    expect(@school_class).to be_valid
  end

  
end
