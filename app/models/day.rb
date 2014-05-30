class Day

  attr_accessor :year, :month, :day

  def initialize(args={})
    self.year = args[:year]
    self.month = args[:month]
    self.day = args[:day]
  end

  def date
    return false unless self.year && self.month && self.day
    Date.parse("#{year}/#{month}/#{day}")
  end

  def formatted_date
    return "None" unless self.date
    date.strftime("%B %d, %Y")
  end

  def sessions
    return [] unless self.date
    @sessions ||= Session.for_date(self.date)
  end

  def sessions_count
    return "No" unless sessions.count > 0
    sessions.count
  end

end
