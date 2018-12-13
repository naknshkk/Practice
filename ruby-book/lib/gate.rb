class Gate
  def initialize(name)
    @name = name
  end

  def enter(ticket)
    true
  end

  def exit(ticket)
    true
  end
end
