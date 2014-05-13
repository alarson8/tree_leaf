require 'spec_helper'

describe Day do

  context "relations" do

    let(:day) { Day.new }
    let(:session_1) { Session.new }
    let(:session_2) { Session.new }

    before :all do
    end

    it "returns an empty array if it has no sessions" do
      day.sessions = nil
      expect(day.sessions).to eq([])
    end

    it "retrieves its sessions" do
      day.sessions = [session_1, session_2]
      expect(day.sessions.first).to eq(session_1)
    end

  end

end

    # xit "has many timeslots" do
    #   day.timeslots = [1,2,3]
    #   expect(day.timeslots).to eq([1,2,3])
    # end
