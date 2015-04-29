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

  def insert(data, index)
    i = 0
    current = @first
    while current.next && i < index
      current = current.next
      i+=1
    end

    next_link = current.next
    current.next = Link.new(data)
    if next_link
      current.next.next = next_link
    end
  end

  def find(data)
    previous = find_previous(data)

    previous ? previous.next : previous
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
    previous = find_previous(data)

    if previous
      previous.next = previous.next.next
    else
      raise "not found."
    end
  end

  def inspect
    current = @first
    results = []
    while current.next
      results << current.data
      current = current.next
    end

    results
  end
end
