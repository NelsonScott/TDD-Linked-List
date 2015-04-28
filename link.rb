class Link
  attr_reader :value
  attr_accessor :next

  def initialize(value, next_link = nil)
    @value = value
    @next = next_link
  end
end
