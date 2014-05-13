require 'spec_helper'

describe Session do

  context "displays" do

    let(:my_session) { Session.new }
    let(:sample_patient_name) { "Bob #{rand(100)}" }
    let(:start_time) {"11:15"}
    let(:end_time) {"11:45"}

    before do
      my_session.patient_name = sample_patient_name
      my_session.start_time = start_time
      my_session.end_time = end_time
    end

    it "a start time, end time, and patient name" do
      expect(my_session.display).to eq("#{start_time} to #{end_time} #{sample_patient_name}")
    end

  end

  context "attributes" do

    let(:my_session) { Session.new }

    before do
      my_session.start_time = "9:00"
      my_session.end_time = "9:30"
      my_session.patient_name = "Bob"
    end

    it "has one start time" do
      expect(my_session.start_time).to_not be_nil
    end

    it "has one end time" do
      expect(my_session.end_time).to eq("9:30")
    end

    it "has a patient name" do
      my_session.patient_name = "Bob"
      expect(my_session.patient_name).to eq("Bob")
    end

  end

end
