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

  def find(data)
    previous = find_previous(data)

    prevous ? return previous.next : return previous
  end

  def find_previous(data)
    current = @first

    while current.next
      if current.next.data == data
        return current
      else
        current = current.next
      end
    end

    nil
  end

  def remove(data)

  end
end
