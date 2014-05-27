class Session < ActiveRecord::Base

  # attr_accessor :start_time, :end_time, :patient_name 

  def display
    "#{self.start_time.strftime("%H:%M")} to #{self.end_time.strftime("%H:%M")} #{self.patient_name}"
  end

end

