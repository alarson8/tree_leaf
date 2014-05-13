class Day

  attr_accessor :sessions

  def sessions
    @sessions ||= []
  end

  def display_sessions
    sessions.map(&:display).join('\\r')
  end

end
