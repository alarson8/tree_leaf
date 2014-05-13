class Session

  attr_accessor :start_time, :end_time, :patient_name

  def display
    "#{self.start_time} to #{self.end_time} #{self.patient_name}"
  end

end

