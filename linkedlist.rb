require_relative "link.rb"

class LinkedList
  attr_reader :first

  def initialize
    @first = nil
  end

  def add(data)
    current = @first

    while current.next
      current = current.next
    end

    new_link = Link.new(data)

  end
end
