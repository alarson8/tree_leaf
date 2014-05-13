require 'spec_helper'

describe Session do

  let(:my_session) { Session.new }


  it "has one start time" do
    my_session.start_time = "9:00"
    expect(my_session.start_time).to_not be_nil
  end

  it "has one end time" do
    my_session.end_time = "9:30"
    expect(my_session.end_time).to eq("9:30")
  end

  it "has a patient name" do
    my_session.patient_name = "Bob"
    expect(my_session.patient_name).to eq("Bob")
  end

end
