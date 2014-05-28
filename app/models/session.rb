class Session < ActiveRecord::Base

  # attr_accessor :start_time, :end_time, :patient_name

  def self.for_date(date_string)
    date = Date.parse(date_string.to_s)
    where(start_time: date.beginning_of_day..date.end_of_day)
  end

  def display
    "#{self.start_time.strftime("%H:%M")} to #{self.end_time.strftime("%H:%M")} #{self.patient_name}"
  end

end

