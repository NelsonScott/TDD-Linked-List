require_relative "link.rb"

class LinkedList
  attr_reader :first

  def initialize
    @first = Link.new(nil)
  end

  def add(data)
    current = @first

    while current.next
      current = current.next
    end

    new_link = Link.new(data)
    current.next = new_link
  end
end
