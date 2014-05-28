require 'spec_helper'

describe Day do

  context "sessions initialization" do

    let(:day) { Day.new }
    let(:session_1) { Session.new }
    let(:session_2) { Session.new }

    it "returns an empty array if it has no sessions" do
      p day.date
      expect(day.sessions).to eq([])
    end

    xit "retrieves its sessions" do
      expect(day.sessions.first).to eq(session_1)
    end

  end

  # context "displays" do

  #   let(:day) { Day.new }
  #   let(:session_1) { Session.new }
  #   let(:session_2) { Session.new }

  #   before do
  #     session_1.start_time = "1:00"
  #     session_1.end_time = "1:30"
  #     session_1.patient_name = "Betty"

  #     session_2.start_time = "2:00"
  #     session_2.end_time = "2:30"
  #     session_2.patient_name = "Frank"

  #     day.sessions = [session_1, session_2]

  #   end

  #   it "all of its sessions" do
  #     expected = "01:00 to 01:30 Betty\\r02:00 to 02:30 Frank"
  #     expect(day.display_sessions).to eq(expected)
  #   end

  # end

end
