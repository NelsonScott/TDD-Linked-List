class LinkedList
  attr_reader :first, :last

  def initialize
    @first = @last = nil
  end

  def add(link)
    @first ||= link
    @last = link
  end
end
