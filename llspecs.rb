require_relative 'linkedlist.rb'
require_relative 'link.rb'

describe "link" do
  let(:my_link) {Link.new(7)}

  describe "#initialize" do
    it "makes a new link" do
      expect(my_link).to be_an_instance_of Link
    end

    it "has data" do
      expect(my_link.data).to equal 7
    end

    it "has a default nil next" do
      expect(my_link.next).to be nil
    end
  end

  describe "#next" do
    let(:next_link) {Link.new("a")}
    it "can set a next link" do
      my_link.next = next_link
      expect(my_link.next).to equal(next_link)
    end
  end
end

describe "linked list" do
  let(:my_linked_list) {LinkedList.new}
  let(:my_link) {Link.new(5)}
  
  describe "#initialize" do
    it "makes a new linked list class" do
      expect(my_linked_list).to be_an_instance_of LinkedList
    end

    it "has an empty first" do
      expect(my_linked_list.first.data).to be nil
    end
  end

  describe "#find" do
    it "finds a link from data" do
      my_linked_list.first.next = my_link
      expect(my_linked_list.find(5)).to be my_link
    end
  end

  describe "#add" do
    let(:my_data) {39492}
    it "adds data to the list" do
      my_linked_list.add(my_data)
      expect(my_linked_list.first.next.data).to equal my_data
    end

    it "adds data twice to a list" do
      my_linked_list.add(6)
      my_linked_list.add(4)

      expect(my_linked_list.first.next.data).to equal 6
      expect(my_linked_list.first.next.next.data).to equal 4
    end
  end

end
